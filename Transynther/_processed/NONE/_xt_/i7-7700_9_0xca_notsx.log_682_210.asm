.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1a95, %rsi
lea addresses_A_ht+0x16445, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $38874, %r14
mov $14, %rcx
rep movsl
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x11085, %r13
nop
nop
nop
nop
nop
add $58003, %r9
movb (%r13), %cl
add $4772, %rsi
lea addresses_D_ht+0x1525, %rsi
lea addresses_WC_ht+0x1c85, %rdi
xor %r10, %r10
mov $68, %rcx
rep movsw
and $60273, %rdi
lea addresses_D_ht+0x9085, %r14
nop
nop
nop
sub $24650, %rcx
movups (%r14), %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x7485, %rsi
lea addresses_WC_ht+0x1d085, %rdi
nop
nop
nop
nop
nop
sub $32736, %r10
mov $89, %rcx
rep movsw
nop
nop
nop
nop
nop
and $7528, %rsi
lea addresses_D_ht+0x27e0, %r10
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r10)
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x11134, %rsi
lea addresses_WT_ht+0x7170, %rdi
nop
nop
nop
nop
nop
cmp $24013, %r14
mov $29, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $10012, %r13
lea addresses_normal_ht+0xefc9, %rsi
nop
nop
nop
nop
nop
add $62164, %rbp
mov (%rsi), %edi
nop
nop
sub $28202, %rsi
lea addresses_normal_ht+0xdacd, %r10
nop
nop
nop
xor $43138, %rsi
movl $0x61626364, (%r10)
nop
nop
sub $59356, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Load
lea addresses_PSE+0x1d005, %rdi
nop
nop
nop
nop
nop
inc %rcx
mov (%rdi), %esi
nop
nop
and $35221, %r9

// Store
lea addresses_RW+0x1bc85, %r8
dec %r14
movl $0x51525354, (%r8)
nop
nop
nop
nop
sub %r9, %r9

// Store
lea addresses_A+0x7c85, %rsi
nop
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm0
movups %xmm0, (%rsi)
xor %r14, %r14

// Load
lea addresses_UC+0x3e15, %r14
nop
nop
nop
nop
xor %r13, %r13
movb (%r14), %r9b
nop
nop
sub $12685, %r8

// Store
lea addresses_WC+0xd585, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %r13
movq %r13, (%rdi)
nop
nop
nop
dec %r14

// Store
lea addresses_A+0x1f7c9, %r9
nop
nop
dec %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm0
movups %xmm0, (%r9)
nop
nop
nop
nop
add $10987, %r9

// Store
lea addresses_normal+0x3085, %r9
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r9)
nop
cmp %rcx, %rcx

// Store
lea addresses_WT+0x9705, %rdi
nop
nop
nop
and $39437, %r13
movl $0x51525354, (%rdi)
nop
nop
nop
nop
xor $35623, %rdi

// Store
lea addresses_normal+0x140c5, %r9
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r13
movq %r13, (%r9)
nop
nop
nop
sub $4753, %r8

// Faulty Load
lea addresses_RW+0x14085, %rcx
nop
nop
nop
nop
cmp %r9, %r9
vmovups (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r8
lea oracles, %r9
and $0xff, %r8
shlq $12, %r8
mov (%r9,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 3, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'32': 682}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
