.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xc544, %r8
nop
nop
nop
nop
inc %rbx
vmovups (%r8), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r11
nop
nop
nop
nop
inc %r10
lea addresses_A_ht+0x19364, %rsi
lea addresses_UC_ht+0x8384, %rdi
cmp %r8, %r8
mov $83, %rcx
rep movsw
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rax
push %rbp
push %rbx
push %rcx

// Store
lea addresses_US+0x9804, %r14
nop
nop
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovaps %ymm1, (%r14)
nop
sub $37259, %rax

// Store
mov $0x67146b0000000144, %rbx
nop
nop
nop
nop
nop
dec %rax
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%rbx)
nop
add %r11, %r11

// Store
lea addresses_PSE+0x3c44, %rbp
add $43324, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm6
vmovups %ymm6, (%rbp)
nop
nop
nop
nop
nop
dec %rax

// Store
lea addresses_D+0xcc4, %r14
clflush (%r14)
nop
nop
nop
dec %rbp
movb $0x51, (%r14)
nop
nop
nop
sub $46986, %rcx

// Faulty Load
lea addresses_A+0x15144, %rcx
nop
nop
dec %rbx
movups (%rcx), %xmm2
vpextrq $1, %xmm2, %r11
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': True, 'AVXalign': True, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'00': 6}
00 00 00 00 00 00
*/
