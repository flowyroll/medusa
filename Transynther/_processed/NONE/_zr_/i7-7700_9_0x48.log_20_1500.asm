.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1cd0d, %r12
nop
nop
nop
nop
and %r10, %r10
mov (%r12), %ecx
nop
nop
xor %r14, %r14
lea addresses_UC_ht+0xd8d8, %r15
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r15)
nop
add $46069, %rcx
lea addresses_A_ht+0x17bad, %r12
nop
inc %rsi
movb $0x61, (%r12)
nop
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %r9
push %rbp
push %rcx
push %rdx

// Load
lea addresses_A+0x134e5, %rbp
nop
nop
nop
cmp $9112, %r11
vmovups (%rbp), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdx
add %rdx, %rdx

// Load
lea addresses_D+0x1aa8d, %r11
nop
nop
nop
sub %r10, %r10
mov (%r11), %edx
nop
nop
nop
nop
nop
cmp $59110, %rdx

// Faulty Load
lea addresses_WC+0x250d, %r10
dec %rcx
vmovups (%r10), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'00': 20}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
