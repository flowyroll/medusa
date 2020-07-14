.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xb064, %r8
nop
nop
sub $36634, %rbx
movb (%r8), %al
nop
add %rbp, %rbp
lea addresses_A_ht+0x104, %rsi
lea addresses_A_ht+0xfd84, %rdi
nop
nop
nop
nop
cmp %rax, %rax
mov $34, %rcx
rep movsw
nop
nop
and $50319, %rcx
lea addresses_WT_ht+0x3204, %rsi
lea addresses_normal_ht+0x19104, %rdi
nop
nop
nop
sub $16983, %r14
mov $17, %rcx
rep movsb
nop
nop
sub %rbp, %rbp
lea addresses_A_ht+0x1d04, %r14
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %r8
movq %r8, %xmm5
movups %xmm5, (%r14)
nop
nop
lfence
lea addresses_UC_ht+0x10004, %rcx
xor %rax, %rax
and $0xffffffffffffffc0, %rcx
movaps (%rcx), %xmm5
vpextrq $1, %xmm5, %r14
cmp %rdi, %rdi
lea addresses_WT_ht+0xf204, %rsi
nop
nop
nop
nop
xor %rbx, %rbx
mov (%rsi), %r8d
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rax
push %rcx

// Store
lea addresses_UC+0x14104, %r15
nop
nop
nop
nop
add $41968, %r14
movw $0x5152, (%r15)
nop
cmp %r11, %r11

// Faulty Load
lea addresses_RW+0xd204, %r12
nop
dec %rcx
movaps (%r12), %xmm3
vpextrq $1, %xmm3, %rax
lea oracles, %r13
and $0xff, %rax
shlq $12, %rax
mov (%r13,%rax,1), %rax
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'45': 7477, '00': 1107, '49': 13207, '47': 38}
00 00 00 49 49 49 45 49 49 45 45 45 49 49 45 45 49 49 49 49 49 49 49 49 45 45 49 49 45 45 45 49 49 49 45 49 49 45 49 49 45 45 49 49 49 49 49 45 49 49 49 45 45 49 49 49 49 49 45 49 45 45 49 45 49 49 49 49 49 45 49 49 45 45 49 49 49 45 45 45 49 49 45 49 49 49 49 49 45 45 49 49 49 45 49 49 49 49 49 49 49 45 49 49 49 00 49 00 49 49 49 49 49 49 49 49 49 49 45 45 49 49 49 49 45 49 49 45 49 45 49 45 49 49 45 45 49 49 49 49 49 45 45 45 49 00 49 49 45 49 45 49 49 00 00 45 49 49 45 00 45 49 45 49 49 45 49 45 49 49 45 45 49 45 45 49 49 49 45 49 49 49 45 49 49 49 49 49 49 49 45 49 49 49 49 49 45 49 49 49 45 45 45 45 00 49 49 49 49 49 49 45 49 49 45 49 49 00 49 45 49 00 49 49 49 49 49 49 49 49 45 49 49 45 49 49 45 45 45 49 45 45 49 45 45 49 45 00 00 49 45 45 49 45 45 49 49 49 45 49 49 49 49 49 49 45 45 49 49 45 49 49 49 45 49 49 45 45 45 49 45 49 49 45 45 49 45 45 49 49 45 45 49 00 45 45 45 45 00 49 45 49 49 49 45 49 49 49 49 49 45 49 45 45 49 45 45 49 45 49 45 45 49 49 45 49 45 49 49 49 45 45 49 45 49 49 49 00 45 45 45 49 49 49 49 45 49 49 49 45 49 49 49 49 49 00 49 49 45 49 49 45 49 49 45 49 49 45 49 45 45 49 45 45 49 49 45 49 45 49 49 45 45 49 49 45 49 49 49 00 49 49 45 49 49 49 45 49 45 49 49 49 49 49 45 49 49 45 49 49 49 45 49 49 45 49 49 45 49 45 45 45 45 45 45 49 00 49 49 49 49 49 49 45 49 00 49 49 49 49 45 49 00 00 00 00 45 45 45 45 49 45 49 45 49 45 49 49 49 45 00 49 45 45 45 49 00 49 49 45 49 45 49 45 45 49 00 45 45 49 49 49 45 49 00 00 49 49 49 00 49 45 49 45 49 45 45 49 49 49 49 00 45 45 45 49 45 00 45 45 45 49 49 45 45 49 00 49 49 49 45 49 49 49 49 45 49 45 49 49 45 45 49 00 49 49 45 49 49 45 49 49 49 45 45 45 00 49 49 49 45 49 49 00 45 45 45 49 49 49 45 49 49 45 49 49 45 49 49 49 49 45 00 49 45 49 49 45 00 45 49 45 49 45 49 49 45 45 49 49 49 49 45 49 49 49 45 49 49 49 49 45 49 49 49 49 49 49 45 49 49 45 49 45 45 49 45 49 45 49 45 45 49 49 49 00 00 45 49 49 00 49 49 45 49 45 49 49 45 49 45 49 49 49 45 49 49 45 49 45 45 49 45 49 49 49 49 49 49 49 45 49 45 45 45 45 49 45 49 49 49 49 49 49 49 45 49 49 49 49 45 49 49 49 49 49 49 49 49 45 49 49 45 49 49 45 49 49 49 45 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 45 49 45 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 45 49 45 45 45 49 49 49 49 49 49 49 45 49 49 00 49 45 45 45 49 49 49 45 49 49 45 45 49 49 49 49 45 49 45 49 45 45 49 45 49 45 45 49 45 49 49 45 49 49 45 45 49 49 45 49 49 45 45 00 00 45 49 49 49 49 45 49 49 45 49 49 49 49 49 45 49 49 49 45 49 49 45 45 49 49 49 45 49 49 45 49 45 49 49 49 49 49 45 49 49 49 45 00 45 45 45 45 49 45 00 49 49 49 45 45 49 49 45 49 45 49 49 49 45 45 49 49 49 49 45 45 45 45 45 45 49 49 45 00 00 49 49 49 45 49 49 00 49 45 45 49 00 49 49 45 49 49 49 49 49 45 49 45 49 45 45 45 49 49 45 49 49 49 45 49 49 49 49 49 49 49 49 49 45 00 49 45 49 45 49 45 49 49 49 49 49 49 49 45 49 49 45 49 45 49 45 49 49 49 00 45 49 45 49 49 45 45 49 49 49 49 49 45 49 45 45 49 49 49 49 49 49 49 00 00 49 49 49 49 45 49 49 45 49 45 49 45 49 49 49 49 49 49 49 45 45 49
*/
