.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xde00, %r11
nop
nop
inc %r14
mov $0x6162636465666768, %rdx
movq %rdx, (%r11)
nop
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0x11adc, %rbx
dec %rbp
movb (%rbx), %r9b
nop
nop
nop
nop
sub $47872, %rdx
lea addresses_WT_ht+0x931e, %r11
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm4
and $0xffffffffffffffc0, %r11
vmovaps %ymm4, (%r11)
nop
nop
nop
nop
nop
add $11291, %r14
lea addresses_D_ht+0x391c, %rsi
lea addresses_UC_ht+0x1a7c, %rdi
nop
add %r11, %r11
mov $51, %rcx
rep movsb
nop
cmp $54466, %rbp
lea addresses_A_ht+0x975c, %rbp
nop
and $35459, %r11
mov $0x6162636465666768, %rbx
movq %rbx, (%rbp)
nop
nop
inc %rbx
lea addresses_normal_ht+0x4e5c, %r9
nop
inc %rdi
mov (%r9), %cx
nop
nop
nop
cmp $1137, %r11
lea addresses_D_ht+0x10b5c, %rbx
nop
and %rsi, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm3
vmovups %ymm3, (%rbx)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x1df0c, %rdx
and $39250, %rsi
mov (%rdx), %di
nop
nop
nop
nop
nop
cmp %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %rax
push %rbp
push %rcx

// Load
mov $0x35c, %r15
nop
nop
nop
cmp %r12, %r12
vmovaps (%r15), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rax
nop
nop
and %r12, %r12

// Faulty Load
lea addresses_A+0x12f5c, %rcx
nop
nop
nop
and $14603, %rbp
movb (%rcx), %al
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 32, 'type': 'addresses_P', 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'00': 21}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
