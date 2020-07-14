.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %rbx
push %rdi
lea addresses_UC_ht+0x14e38, %rbx
nop
nop
cmp %r11, %r11
mov (%rbx), %r12w
nop
nop
nop
nop
nop
dec %r14
lea addresses_WT_ht+0x1d678, %rdi
nop
nop
nop
xor $41761, %r8
mov (%rdi), %ebx
nop
nop
nop
and %rdi, %rdi
pop %rdi
pop %rbx
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rax
push %rsi

// Faulty Load
lea addresses_US+0x143b8, %rax
sub %r11, %r11
movups (%rax), %xmm2
vpextrq $1, %xmm2, %r15
lea oracles, %r14
and $0xff, %r15
shlq $12, %r15
mov (%r14,%r15,1), %r15
pop %rsi
pop %rax
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'ff': 6, '00': 3}
ff 00 ff ff ff ff ff 00 00
*/
