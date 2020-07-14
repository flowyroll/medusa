.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xc812, %r9
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movb (%r9), %r10b
add $57845, %rsi
lea addresses_D_ht+0xfd1a, %rsi
lea addresses_UC_ht+0x14152, %rdi
cmp $55293, %r12
mov $35, %rcx
rep movsb
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0xf4d2, %r9
nop
nop
nop
nop
nop
xor %r14, %r14
mov (%r9), %r12
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x74d2, %r10
nop
nop
nop
nop
nop
inc %rsi
movb $0x61, (%r10)
nop
nop
nop
nop
add %r9, %r9
lea addresses_D_ht+0x1411c, %rsi
nop
nop
nop
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
nop
cmp $13975, %r9
lea addresses_A_ht+0x1b5d2, %rsi
lea addresses_normal_ht+0x532, %rdi
nop
nop
and %rbx, %rbx
mov $2, %rcx
rep movsq
xor %rdi, %rdi
lea addresses_UC_ht+0x1e68e, %rsi
lea addresses_WT_ht+0x15bf2, %rdi
nop
nop
nop
sub $22315, %rbx
mov $45, %rcx
rep movsb
nop
nop
nop
nop
sub $663, %r12
lea addresses_UC_ht+0xb4d2, %rcx
nop
nop
cmp %r10, %r10
mov (%rcx), %di
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_A_ht+0x6d52, %r9
nop
nop
nop
xor $18898, %rsi
mov (%r9), %r10w
dec %r12
lea addresses_UC_ht+0x7242, %r12
nop
nop
nop
nop
and $7130, %r9
mov $0x6162636465666768, %rbx
movq %rbx, (%r12)
nop
nop
nop
add %rbx, %rbx
lea addresses_normal_ht+0x432, %rsi
lea addresses_WT_ht+0x16672, %rdi
cmp $9104, %rbx
mov $63, %rcx
rep movsq
cmp %rbx, %rbx
lea addresses_UC_ht+0x1067a, %r10
nop
nop
nop
add $1038, %rsi
movb $0x61, (%r10)
add $22213, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rcx

// Faulty Load
lea addresses_WT+0x10cd2, %r15
and %r8, %r8
vmovups (%r15), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbx
lea oracles, %r15
and $0xff, %rbx
shlq $12, %rbx
mov (%r15,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': True}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
