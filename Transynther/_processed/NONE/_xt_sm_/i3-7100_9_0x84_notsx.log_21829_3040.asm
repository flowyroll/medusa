.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x895, %r12
nop
nop
nop
sub $59164, %rax
mov (%r12), %r10w
sub %r14, %r14
lea addresses_D_ht+0xfd15, %rsi
lea addresses_normal_ht+0x6add, %rdi
nop
nop
nop
xor $52067, %r14
mov $107, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WT_ht+0x19815, %rax
nop
cmp $30967, %rcx
movl $0x61626364, (%rax)
nop
nop
inc %rcx
lea addresses_A_ht+0x5415, %rsi
lea addresses_WT_ht+0x16925, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $21, %rcx
rep movsb
nop
nop
nop
nop
and %r10, %r10
lea addresses_normal_ht+0x14cb7, %r14
nop
nop
dec %rcx
movb (%r14), %r10b
nop
nop
nop
nop
sub $35326, %rdi
lea addresses_WC_ht+0x6b2d, %rsi
lea addresses_A_ht+0x97e9, %rdi
nop
nop
and %r14, %r14
mov $39, %rcx
rep movsq
and $38530, %r12
lea addresses_D_ht+0xac15, %r12
nop
nop
nop
nop
and %rdi, %rdi
movb $0x61, (%r12)
nop
lfence
lea addresses_normal_ht+0x1d315, %rax
nop
nop
nop
cmp $32779, %r11
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
nop
sub $57200, %r10
lea addresses_normal_ht+0x1d395, %rsi
lea addresses_normal_ht+0x16615, %rdi
nop
nop
nop
add %rax, %rax
mov $119, %rcx
rep movsq
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x1c225, %rdi
add $52497, %r10
vmovups (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rax
nop
nop
nop
cmp $63231, %r12
lea addresses_D_ht+0x15845, %rdi
nop
nop
sub %rsi, %rsi
movb (%rdi), %r10b
cmp $6754, %rax
lea addresses_WC_ht+0x15c15, %r12
nop
nop
nop
cmp %r10, %r10
mov (%r12), %si
nop
nop
nop
nop
nop
add $54338, %rdi
lea addresses_D_ht+0xf8ed, %rdi
nop
xor %rax, %rax
mov $0x6162636465666768, %r12
movq %r12, %xmm7
movups %xmm7, (%rdi)
nop
add %rdi, %rdi
lea addresses_WT_ht+0x3c15, %rsi
lea addresses_normal_ht+0x7d0d, %rdi
nop
sub %r12, %r12
mov $104, %rcx
rep movsl
add $32358, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rbp
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0xe0a5, %r13
nop
nop
nop
nop
and $65077, %rdi
movw $0x5152, (%r13)
nop
nop
nop
sub %r13, %r13

// Load
lea addresses_PSE+0x10c15, %rdi
clflush (%rdi)
nop
nop
and %rbp, %rbp
mov (%rdi), %ebx
nop
dec %rdi

// Store
lea addresses_PSE+0x10c15, %rbp
nop
nop
sub $9758, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, (%rbp)
nop
nop
nop
nop
xor $14924, %r13

// Store
lea addresses_normal+0x14415, %r13
nop
nop
add %r9, %r9
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movups %xmm7, (%r13)

// Exception!!!
nop
nop
nop
nop
mov (0), %r9
nop
nop
xor %rdi, %rdi

// Store
lea addresses_RW+0x1b7a5, %r9
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%r9)
cmp %rsi, %rsi

// Store
lea addresses_normal+0xd295, %rdx
clflush (%rdx)
nop
nop
nop
nop
cmp $47097, %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm7
movups %xmm7, (%rdx)
nop
nop
nop
sub %rdi, %rdi

// Store
mov $0x40a70b0000000815, %rdx
nop
nop
nop
inc %rbp
movw $0x5152, (%rdx)
nop
nop
and $64243, %r13

// Faulty Load
lea addresses_PSE+0x10c15, %r13
add %rdi, %rdi
movb (%r13), %bl
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
