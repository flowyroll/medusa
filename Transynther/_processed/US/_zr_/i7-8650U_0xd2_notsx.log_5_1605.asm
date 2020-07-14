.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xf685, %rax
nop
nop
nop
dec %rsi
movw $0x6162, (%rax)
nop
nop
nop
nop
add $29609, %r15
lea addresses_WC_ht+0x6b25, %r13
and $26944, %r14
mov $0x6162636465666768, %r15
movq %r15, %xmm4
movups %xmm4, (%r13)
xor %rdi, %rdi
lea addresses_normal_ht+0x2901, %rdi
nop
nop
nop
nop
and $38590, %rdx
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rax
nop
sub $36717, %rdi
lea addresses_normal_ht+0x11785, %r15
nop
nop
and $16487, %rax
mov (%r15), %r14w
nop
nop
nop
nop
lfence
lea addresses_D_ht+0x1ba05, %r14
nop
nop
dec %rsi
movb $0x61, (%r14)
nop
xor $60827, %rdx
lea addresses_D_ht+0x13c05, %rsi
lea addresses_D_ht+0x5165, %rdi
nop
and $61397, %rax
mov $115, %rcx
rep movsb
nop
nop
add $61565, %rax
lea addresses_A_ht+0xd005, %rdi
and $12763, %rsi
movb (%rdi), %r13b
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0xc445, %rcx
nop
cmp $11864, %r15
and $0xffffffffffffffc0, %rcx
movntdqa (%rcx), %xmm6
vpextrq $0, %xmm6, %r13
nop
xor $56090, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rax
push %rbp
push %rdx
push %rsi

// Faulty Load
lea addresses_US+0x8005, %rax
nop
nop
nop
cmp $7387, %rdx
vmovups (%rax), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r11
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'00': 5}
00 00 00 00 00
*/
