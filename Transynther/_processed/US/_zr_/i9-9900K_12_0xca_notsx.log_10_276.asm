.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x13ac0, %rcx
nop
nop
nop
nop
nop
add %r11, %r11
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
add $28319, %r15
lea addresses_UC_ht+0x15c70, %rsi
lea addresses_A_ht+0x13980, %rdi
nop
nop
nop
nop
nop
xor $37597, %r11
mov $109, %rcx
rep movsq
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x240, %rsi
lea addresses_A_ht+0x1a380, %rdi
nop
nop
nop
add %r13, %r13
mov $91, %rcx
rep movsw
xor $9408, %rsi
lea addresses_WC_ht+0x63b4, %rsi
nop
nop
nop
nop
nop
and %r14, %r14
vmovups (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
nop
nop
nop
xor %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rax
push %rbp
push %rdx
push %rsi

// Faulty Load
lea addresses_US+0x1c8c0, %r14
nop
nop
nop
sub %rax, %rax
mov (%r14), %si
lea oracles, %r15
and $0xff, %rsi
shlq $12, %rsi
mov (%r15,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
