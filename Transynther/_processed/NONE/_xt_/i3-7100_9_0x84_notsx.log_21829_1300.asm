.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x2011, %rsi
lea addresses_UC_ht+0x3f11, %rdi
inc %r9
mov $56, %rcx
rep movsw
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x18991, %rcx
nop
nop
nop
xor $20613, %rdi
mov $0x6162636465666768, %rax
movq %rax, %xmm2
vmovups %ymm2, (%rcx)
nop
xor %rdi, %rdi
lea addresses_D_ht+0x15931, %rsi
lea addresses_UC_ht+0xb491, %rdi
nop
nop
nop
nop
nop
sub $15318, %r10
mov $78, %rcx
rep movsw
xor %rdi, %rdi
lea addresses_WT_ht+0xf6f1, %rsi
lea addresses_WC_ht+0x8ae4, %rdi
clflush (%rsi)
nop
nop
nop
and $26222, %rdx
mov $67, %rcx
rep movsb
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0xbf79, %r9
nop
nop
dec %rcx
movb $0x61, (%r9)
nop
sub %rax, %rax
lea addresses_UC_ht+0x1bc11, %r9
nop
nop
sub $41659, %rdx
movb (%r9), %al
nop
nop
nop
nop
nop
cmp $64591, %r9
lea addresses_A_ht+0x71d1, %rcx
nop
nop
xor $39874, %r9
mov (%rcx), %dx
and $56425, %rdi
lea addresses_normal_ht+0xe7c4, %rdx
clflush (%rdx)
nop
nop
nop
nop
xor %rcx, %rcx
mov (%rdx), %rax
nop
nop
inc %rcx
lea addresses_A_ht+0x16705, %rsi
lea addresses_normal_ht+0x7f3b, %rdi
nop
nop
nop
nop
inc %r9
mov $105, %rcx
rep movsw
and %rsi, %rsi
lea addresses_D_ht+0x1ea65, %rsi
nop
nop
nop
nop
nop
cmp %r9, %r9
movw $0x6162, (%rsi)
nop
nop
add $16377, %rdi
lea addresses_WT_ht+0x40d9, %rax
nop
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %r10
movq %r10, (%rax)
nop
nop
nop
nop
xor %r10, %r10
lea addresses_D_ht+0x16991, %r9
sub $53508, %rsi
movw $0x6162, (%r9)
nop
nop
nop
nop
add %r9, %r9
lea addresses_normal_ht+0x10e66, %r10
nop
nop
nop
nop
nop
and $6121, %rsi
movb (%r10), %dl
nop
dec %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rcx
push %rdx
push %rsi

// Store
lea addresses_D+0x17411, %r10
nop
nop
nop
and %r12, %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm6
vmovups %ymm6, (%r10)
nop
nop
nop
and $44411, %r8

// Store
lea addresses_D+0x2911, %rcx
sub %rsi, %rsi
movl $0x51525354, (%rcx)
nop
nop
sub %r8, %r8

// Load
lea addresses_normal+0xdc11, %rsi
nop
nop
nop
nop
inc %r14
movups (%rsi), %xmm2
vpextrq $1, %xmm2, %r12
sub %rsi, %rsi

// Store
lea addresses_UC+0x1cc11, %r12
cmp %rdx, %rdx
movw $0x5152, (%r12)
nop
sub %r14, %r14

// Store
lea addresses_normal+0x14ab7, %r8
nop
nop
nop
nop
nop
add $32326, %rsi
movw $0x5152, (%r8)
nop
and %r14, %r14

// Store
lea addresses_normal+0x15191, %r8
nop
nop
nop
nop
and %r12, %r12
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
and $2763, %rcx

// Load
lea addresses_UC+0x1e331, %r14
nop
nop
sub $36964, %rcx
movups (%r14), %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
nop
nop
inc %r12

// Faulty Load
lea addresses_UC+0x1d411, %r12
add $6786, %rcx
mov (%r12), %r10w
lea oracles, %rcx
and $0xff, %r10
shlq $12, %r10
mov (%rcx,%r10,1), %r10
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'37': 21829}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
