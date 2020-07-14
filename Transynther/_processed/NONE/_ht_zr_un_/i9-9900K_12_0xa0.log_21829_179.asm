.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xd8a8, %rsi
lea addresses_UC_ht+0x1e8a8, %rdi
nop
nop
nop
nop
and $3098, %r14
mov $123, %rcx
rep movsq
nop
nop
xor $47154, %rdi
lea addresses_WC_ht+0x16028, %rsi
lea addresses_normal_ht+0xd788, %rdi
clflush (%rsi)
nop
nop
nop
mfence
mov $63, %rcx
rep movsq
nop
nop
nop
nop
nop
add $46886, %rcx
lea addresses_normal_ht+0x4b90, %rax
cmp %r13, %r13
mov (%rax), %r11
nop
nop
nop
sub $51250, %rax
lea addresses_A_ht+0x78c8, %rsi
lea addresses_UC_ht+0x8648, %rdi
nop
nop
xor $53932, %r10
mov $38, %rcx
rep movsw
nop
sub %rcx, %rcx
lea addresses_WC_ht+0xa4c8, %rsi
lea addresses_UC_ht+0x11100, %rdi
clflush (%rdi)
sub %rax, %rax
mov $56, %rcx
rep movsq
cmp $34831, %r10
lea addresses_A_ht+0x1a0a8, %rsi
lea addresses_WT_ht+0x184a8, %rdi
sub $20874, %r11
mov $114, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $17251, %rcx
lea addresses_WC_ht+0x4684, %rsi
lea addresses_normal_ht+0x19468, %rdi
and $44881, %r13
mov $54, %rcx
rep movsl
nop
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x13b20, %r10
nop
cmp $50819, %r14
mov (%r10), %edi
nop
dec %rdi
lea addresses_A_ht+0xe8a8, %rsi
lea addresses_WC_ht+0x138a8, %rdi
nop
nop
cmp $6077, %r10
mov $114, %rcx
rep movsq
nop
nop
nop
sub $28940, %r10
lea addresses_A_ht+0x16bd8, %rsi
lea addresses_D_ht+0x110d0, %rdi
nop
nop
nop
nop
nop
dec %r13
mov $23, %rcx
rep movsb
dec %rax
lea addresses_UC_ht+0x1d140, %rsi
lea addresses_D_ht+0x120a8, %rdi
nop
nop
nop
nop
inc %r14
mov $63, %rcx
rep movsl
nop
nop
nop
nop
nop
add $24778, %rax
lea addresses_A_ht+0x7af8, %rax
nop
nop
nop
nop
nop
xor $33853, %rcx
movb $0x61, (%rax)
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x68f4, %r14
nop
nop
nop
xor %rsi, %rsi
vmovups (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
nop
nop
nop
nop
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rax
push %rcx
push %rsi

// Faulty Load
lea addresses_WC+0x18a8, %rsi
nop
nop
nop
nop
nop
and $48637, %rax
vmovups (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r12
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'src': {'same': True, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'48': 1779, '49': 3812, '00': 11036, '45': 4796, '47': 401, 'bc': 1, '08': 3, 'fa': 1}
49 00 49 47 00 00 45 00 48 49 49 00 00 45 45 45 00 00 00 47 49 00 00 45 45 00 00 00 48 49 47 00 00 45 00 00 49 00 00 00 45 00 49 00 00 45 00 00 49 49 00 00 45 45 00 00 00 48 49 49 00 00 45 45 00 00 00 49 00 48 45 45 00 48 49 49 00 00 45 00 00 48 49 49 00 45 45 00 00 48 49 00 00 48 45 00 00 48 49 00 45 45 45 00 00 49 49 49 00 45 45 00 48 00 49 00 45 45 00 48 49 47 00 00 45 00 00 48 49 00 00 00 45 00 00 00 49 00 00 00 45 45 00 00 00 48 00 49 00 48 45 00 48 49 49 00 00 45 45 00 00 00 48 49 00 00 00 45 00 00 00 49 00 00 00 45 00 48 49 49 00 00 45 45 00 00 45 48 49 00 00 48 45 00 00 00 49 00 45 45 00 49 49 00 00 45 45 00 00 45 00 49 00 00 45 45 00 48 49 00 48 45 45 00 45 49 49 00 00 45 45 00 45 00 49 00 00 00 45 00 00 49 49 00 00 45 45 00 00 00 00 49 47 00 00 45 45 00 48 49 00 00 45 00 00 49 49 00 00 45 45 00 00 00 48 49 47 00 00 45 00 48 49 00 00 45 45 00 45 00 49 00 00 45 45 00 49 49 00 00 45 45 00 45 00 49 47 00 00 45 45 00 00 00 00 49 47 00 00 45 45 00 00 48 49 47 00 45 45 45 00 00 45 00 49 00 00 45 45 00 45 49 49 45 00 45 00 00 00 49 49 00 00 45 00 00 00 48 49 47 00 00 45 45 00 00 00 49 47 00 00 45 45 00 00 00 49 00 00 00 45 00 45 49 49 00 00 00 45 00 48 49 00 48 45 00 00 00 49 00 00 45 45 00 48 49 00 00 45 45 45 00 00 49 47 00 00 45 00 00 49 49 00 00 45 00 00 49 47 00 48 45 00 00 48 49 00 00 45 45 00 48 00 49 00 00 45 45 00 48 49 00 00 00 45 00 00 00 49 00 00 45 45 00 48 49 49 00 00 45 00 45 00 49 00 00 00 45 00 00 48 49 00 00 00 45 00 00 49 49 00 45 45 00 00 00 48 49 00 45 45 00 00 49 49 00 00 45 45 00 49 00 45 45 00 00 49 49 00 00 45 45 00 00 48 49 47 00 48 45 00 00 00 49 00 00 00 45 45 00 48 49 49 00 45 45 00 00 00 48 49 49 00 00 45 45 00 00 49 00 00 00 45 00 00 00 49 00 48 45 00 48 49 49 00 45 45 00 00 00 00 49 00 00 00 45 00 00 48 49 00 48 45 45 00 00 49 49 00 00 45 45 00 00 00 00 49 47 00 00 45 45 00 00 00 00 49 00 00 00 45 45 00 48 49 00 00 45 45 00 00 49 00 00 45 45 00 48 49 00 00 00 45 00 45 00 49 00 48 00 45 00 00 49 49 00 00 45 45 00 00 00 48 49 00 48 45 00 00 49 49 00 00 45 45 00 49 49 00 00 45 45 00 00 49 49 00 00 45 45 00 00 00 49 00 00 48 45 00 45 49 49 00 00 45 00 00 49 00 48 45 45 00 48 49 49 00 00 45 00 00 00 49 00 00 48 45 45 00 48 49 00 00 00 45 45 00 00 00 49 00 00 00 45 00 00 48 49 00 48 00 45 00 00 00 49 49 00 45 00 49 49 00 00 45 45 45 00 00 49 00 00 45 45 00 00 00 47 00 00 00 45 00 00 49 49 00 00 45 45 00 00 00 49 49 00 00 45 45 00 00 00 49 47 00 00 45 45 00 00 49 00 00 45 00 00 00 49 00 00 00 45 00 00 48 49 00 00 45 45 00 47 00 48 45 00 00 00 49 00 00 00 45 00 00 00 49 49 00 48 45 00 00 00 49 49 00 45 45 00 00 00 49 49 47 00 45 45 00 48 49 47 00 45 45 00 48 48 49 49 00 00 45 00 49 49 00 45 45 00 45 00 49 00 45 45 45 00 48 49 49 00 45 45 00 48 00 49 00 00 00 45 00 00 00 47 00 48 00 48 49 49 00 00 45 45 00 00 00 49 00 00 00 45 00 00 48 49 00 48 45 45 00 49 47 00 48 45 00 00 00 49 00 00 45 45 00 48 49 49 00 00 45 45 00 00 00 00 49 47 00 00 45 45 00 48 49 00 00 00 45 45 00 00 48 49 00 00 45 45 00 48 49 49 00 00 45 00 00 49
*/
