.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %r9
push %rbp
push %rbx
lea addresses_normal_ht+0x1c44a, %r8
nop
nop
nop
nop
nop
add %r11, %r11
mov $0x6162636465666768, %r9
movq %r9, %xmm6
vmovups %ymm6, (%r8)
dec %r11
lea addresses_A_ht+0xaf32, %rbx
add $46197, %rbp
and $0xffffffffffffffc0, %rbx
vmovntdqa (%rbx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r12
nop
nop
nop
nop
cmp $25906, %r8
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rax
push %rbp
push %rdi
push %rdx

// Store
mov $0x3122e200000002ca, %r11
xor %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
vmovups %ymm7, (%r11)
nop
sub %rbp, %rbp

// Store
mov $0x3122e200000002ca, %r14
nop
nop
nop
and $34189, %r11
movl $0x51525354, (%r14)
xor %rdi, %rdi

// Store
mov $0x3122e200000002ca, %rdx
add %r12, %r12
movw $0x5152, (%rdx)
nop
nop
inc %rdi

// Store
lea addresses_US+0x534a, %rax
nop
nop
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovntdq %ymm6, (%rax)
nop
nop
nop
nop
nop
and $167, %r12

// Faulty Load
mov $0x3122e200000002ca, %rdx
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov (%rdx), %ax
lea oracles, %r11
and $0xff, %rax
shlq $12, %rax
mov (%r11,%rax,1), %rax
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 3}}
{'52': 43, '00': 9}
52 52 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 00 52 00 52 52 52 52 00 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 00 00 52 52 52 52 52
*/
