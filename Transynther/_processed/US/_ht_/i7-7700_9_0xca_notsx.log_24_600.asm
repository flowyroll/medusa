.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x163aa, %rax
nop
nop
nop
sub %r12, %r12
mov (%rax), %r11
xor $21214, %rbx
lea addresses_A_ht+0x61d2, %rdi
nop
cmp $8090, %r9
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
add $54513, %r9
lea addresses_normal_ht+0x1c1aa, %rsi
lea addresses_normal_ht+0x1302a, %rdi
nop
nop
add $10967, %r12
mov $2, %rcx
rep movsq
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0x1401a, %rsi
lea addresses_normal_ht+0x15801, %rdi
nop
sub $3754, %r11
mov $95, %rcx
rep movsb
nop
nop
dec %r9
lea addresses_D_ht+0x11c4a, %rsi
lea addresses_UC_ht+0x3faa, %rdi
nop
inc %rbx
mov $84, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $50680, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rax
push %rbx
push %rdx
push %rsi

// Store
lea addresses_RW+0x6a6a, %r14
xor %rsi, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movaps %xmm5, (%r14)
nop
nop
nop
nop
nop
cmp $45148, %r14

// Faulty Load
lea addresses_US+0xafaa, %r13
nop
nop
inc %rdx
vmovups (%r13), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'44': 1, '46': 23}
46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46
*/
