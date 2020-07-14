.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x12ff4, %r12
nop
nop
nop
nop
dec %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r12)
nop
nop
xor $35614, %rdi
lea addresses_UC_ht+0x11b64, %rsi
nop
nop
nop
cmp $62466, %r13
mov (%rsi), %ebx
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0x11ff4, %rsi
lea addresses_UC_ht+0x18eb4, %rdi
nop
nop
nop
nop
cmp %r15, %r15
mov $126, %rcx
rep movsw
nop
nop
xor $6243, %r13
lea addresses_WT_ht+0x19634, %rdi
nop
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
nop
nop
inc %r12
lea addresses_WT_ht+0x1abf4, %rcx
sub $20635, %r13
mov $0x6162636465666768, %r12
movq %r12, %xmm1
movups %xmm1, (%rcx)
nop
nop
and $11427, %r12
lea addresses_WT_ht+0x198c4, %rsi
lea addresses_UC_ht+0xcaf4, %rdi
nop
cmp %rax, %rax
mov $30, %rcx
rep movsl
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x1dbf4, %rsi
lea addresses_A_ht+0x169f4, %rdi
nop
nop
nop
nop
xor %r12, %r12
mov $26, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x14df4, %r13
nop
nop
nop
cmp $9815, %r12
movw $0x6162, (%r13)
dec %rax
lea addresses_D_ht+0x4ef4, %rbx
nop
nop
nop
nop
xor %r15, %r15
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
add $446, %rdi
lea addresses_WC_ht+0x1eef4, %rcx
nop
nop
nop
add %r15, %r15
mov (%rcx), %r13
nop
nop
nop
nop
nop
cmp $23360, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rbp
push %rbx
push %rdi
push %rdx

// Faulty Load
lea addresses_US+0x14ff4, %rbp
nop
nop
nop
dec %r9
mov (%rbp), %dx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'00': 3}
00 00 00
*/
