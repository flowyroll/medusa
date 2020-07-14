.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x4072, %r9
nop
nop
nop
dec %r8
vmovups (%r9), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbp
nop
nop
nop
nop
nop
cmp $48232, %rax
lea addresses_D_ht+0x1493e, %rax
nop
nop
add $40362, %r14
mov (%rax), %r11d
nop
inc %rbp
lea addresses_D_ht+0x4875, %rsi
lea addresses_D_ht+0x1d63e, %rdi
nop
nop
nop
nop
inc %r9
mov $15, %rcx
rep movsw
cmp %rax, %rax
lea addresses_normal_ht+0x1ecbe, %r9
nop
dec %rcx
mov (%r9), %esi
xor %rbp, %rbp
lea addresses_normal_ht+0xb53e, %rsi
lea addresses_normal_ht+0x14ec5, %rdi
nop
xor %r9, %r9
mov $125, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rbp
push %rbx
push %rdx
push %rsi

// Faulty Load
lea addresses_UC+0x523e, %rdx
nop
nop
nop
nop
inc %r11
vmovups (%rdx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbx
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'44': 13680, '46': 8149}
46 44 46 44 44 44 44 44 46 44 44 44 46 44 44 46 44 44 46 44 46 44 44 46 44 44 46 46 44 46 46 44 44 46 46 46 44 44 44 46 44 44 44 44 44 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 46 46 44 46 44 44 46 44 44 46 46 44 44 44 44 46 44 44 44 46 44 46 46 46 44 44 44 44 46 46 44 44 44 44 46 44 46 46 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 46 46 44 46 44 44 44 46 44 44 44 46 46 46 46 46 44 44 46 46 44 44 44 44 44 46 44 46 46 44 46 46 46 44 46 44 46 44 44 44 44 46 44 46 44 44 46 46 46 46 46 44 44 44 46 44 46 46 44 46 44 46 44 44 44 44 44 44 44 46 46 46 44 46 46 46 44 44 44 46 46 44 44 46 46 44 46 46 44 44 46 44 44 46 44 44 46 44 46 46 44 44 46 44 44 44 44 46 44 44 46 44 46 44 44 46 44 44 46 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 46 44 44 46 44 46 44 44 44 44 46 46 46 44 44 44 44 44 46 44 46 44 44 44 44 46 46 44 44 46 46 44 44 44 46 46 44 44 44 44 44 44 44 44 46 46 44 44 44 44 46 44 44 44 44 46 44 46 44 44 46 44 46 44 44 46 44 46 44 44 46 46 44 44 44 46 46 44 44 44 44 46 44 46 44 46 44 44 46 46 46 46 44 44 44 46 44 44 44 44 44 44 44 44 46 44 44 46 46 44 46 44 44 44 46 46 44 44 44 44 46 44 44 44 44 46 46 44 46 46 46 44 44 46 46 46 46 44 44 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 46 44 44 44 44 46 44 46 44 44 46 44 44 44 46 46 46 44 46 44 44 44 46 44 44 44 44 46 44 44 46 46 44 44 44 46 46 46 44 44 46 46 44 44 46 44 46 46 44 44 44 46 46 44 46 44 46 46 44 46 46 44 44 46 46 44 46 44 44 44 46 44 44 44 44 46 44 46 46 46 44 46 44 44 44 44 46 44 46 46 46 44 44 44 44 44 44 44 44 44 46 46 46 46 46 46 44 44 46 46 44 44 44 44 44 44 44 44 46 44 46 44 44 44 44 46 44 44 44 44 44 44 44 46 44 46 44 46 44 44 44 46 44 44 44 46 44 44 44 46 44 44 46 46 44 44 44 44 46 46 46 44 46 46 44 46 46 46 44 46 46 44 44 46 46 44 44 44 46 44 44 46 44 46 44 46 44 46 46 44 46 44 44 44 44 46 44 46 46 44 44 44 44 44 44 44 44 46 44 44 46 46 44 46 44 44 44 44 46 44 46 46 46 44 46 46 46 46 44 46 46 46 44 44 44 46 46 44 44 46 46 46 44 46 46 44 46 46 46 46 46 46 44 46 46 44 46 46 44 46 44 46 44 44 44 44 46 46 44 44 44 46 44 44 44 44 46 44 46 46 44 44 44 46 44 44 46 44 44 44 46 44 46 46 44 44 44 44 44 46 46 44 44 46 44 44 44 44 46 44 44 46 46 44 44 44 44 46 44 44 44 44 44 46 46 44 46 44 44 46 46 46 46 44 46 46 44 44 44 44 44 44 46 44 44 46 44 46 44 44 44 46 44 44 46 44 44 44 46 46 46 44 46 46 46 46 46 44 46 46 44 46 44 46 46 46 44 44 44 46 46 46 46 44 46 44 44 44 44 44 44 46 46 44 44 44 44 46 46 44 44 44 44 44 44 46 44 44 46 46 44 44 46 44 46 46 44 44 46 46 46 46 44 46 44 46 44 44 46 46 44 44 46 46 46 46 46 44 46 46 44 44 44 44 44 46 46 44 46 44 44 46 46 44 46 44 44 44 44 44 46 44 44 46 44 44 44 44 44 44 44 44 44 46 46 44 46 46 46 44 44 44 44 44 44 44 46 46 44 46 46 46 44 46 44 44 46 46 44 46 44 46 44 46 44 46 44 46 44 46 44 44 46 44 46 46 44 44 44 46 46 46 46 44 46 44 44 46 44 44 46 46 44 46 44 44 44 44 46 46 44 44 46 44 44 44 44 46 44 44 46 44 44 44 46 46 46 46 46 46 44 46 46 46 46 44 44 44 44 46 46 46 46 44 44 46 44 46 46 44 44 46 44 46 46
*/
