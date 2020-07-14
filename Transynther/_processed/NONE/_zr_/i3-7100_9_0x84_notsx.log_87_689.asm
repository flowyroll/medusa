.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x9c08, %rsi
lea addresses_normal_ht+0x1b462, %rdi
nop
nop
mfence
mov $14, %rcx
rep movsl
nop
nop
nop
nop
inc %r11
lea addresses_D_ht+0x1c6c2, %r10
cmp $21484, %r15
vmovups (%r10), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
nop
nop
and $1863, %rdi
lea addresses_normal_ht+0xaec, %rdi
nop
nop
nop
xor $31836, %r12
vmovups (%rdi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r15
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x11962, %r15
nop
nop
nop
nop
xor $35974, %rcx
mov (%r15), %edi
nop
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x10a32, %rdi
nop
nop
sub %rsi, %rsi
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_WC_ht+0xa8c2, %r10
xor %rcx, %rcx
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_A_ht+0x1a822, %r12
sub $41217, %rsi
mov (%r12), %r11d
nop
nop
nop
and %r11, %r11
lea addresses_UC_ht+0x1264e, %r15
nop
nop
nop
nop
sub $38543, %r11
mov $0x6162636465666768, %r10
movq %r10, (%r15)
nop
nop
sub $19100, %r12
lea addresses_WT_ht+0xd502, %rsi
lea addresses_WT_ht+0xdb42, %rdi
nop
nop
nop
cmp $34126, %rax
mov $109, %rcx
rep movsb
nop
nop
sub %r12, %r12
lea addresses_A_ht+0x1d862, %rdi
nop
nop
nop
nop
dec %rsi
movw $0x6162, (%rdi)
sub $51507, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x9dba, %rbp
clflush (%rbp)
nop
xor $47478, %r10
movl $0x51525354, (%rbp)
nop
cmp $32372, %rcx

// Load
lea addresses_UC+0x3822, %r9
cmp %r13, %r13
mov (%r9), %rbx
and $55510, %rbx

// Store
lea addresses_PSE+0xd722, %rcx
nop
nop
nop
nop
nop
sub $21437, %r11
movb $0x51, (%rcx)
nop
nop
nop
nop
and $61527, %r9

// REPMOV
lea addresses_PSE+0xd722, %rsi
lea addresses_RW+0x13026, %rdi
nop
nop
dec %r13
mov $50, %rcx
rep movsb
nop
nop
nop
add $46474, %rbp

// Store
lea addresses_UC+0xb062, %r9
add %rbx, %rbx
movb $0x51, (%r9)
nop
nop
cmp $33227, %r11

// Store
lea addresses_US+0x16642, %r11
nop
nop
dec %rbx
movw $0x5152, (%r11)
nop
nop
nop
xor $53425, %rbp

// Store
lea addresses_RW+0x16922, %rbx
nop
xor %rdi, %rdi
movb $0x51, (%rbx)
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_PSE+0xd722, %rbx
dec %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
nop
nop
sub %r10, %r10

// Faulty Load
lea addresses_PSE+0xd722, %r11
sub %rbx, %rbx
vmovups (%r11), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdi
lea oracles, %r9
and $0xff, %rdi
shlq $12, %rdi
mov (%r9,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_RW', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 87}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
