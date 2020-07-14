.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rcx
push %rsi
lea addresses_WT_ht+0x4d1c, %r15
nop
nop
nop
nop
nop
sub $6773, %r9
mov (%r15), %rsi
nop
add $7443, %rsi
lea addresses_D_ht+0x1771c, %r10
nop
nop
nop
nop
add %rsi, %rsi
mov (%r10), %cx
nop
sub %rsi, %rsi
pop %rsi
pop %rcx
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rbp
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WT+0xb31c, %rsi
nop
nop
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
nop
cmp $32324, %rsi

// Store
lea addresses_RW+0x1dddc, %rdx
nop
nop
nop
nop
sub $8572, %rbx
movl $0x51525354, (%rdx)
sub $34623, %rcx

// Store
lea addresses_WC+0x7762, %rbx
clflush (%rbx)
nop
nop
nop
xor $58167, %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
nop
nop
add $27151, %r9

// Load
lea addresses_D+0x6602, %rdx
nop
nop
nop
nop
xor %rcx, %rcx
movb (%rdx), %r9b
nop
nop
nop
and $54866, %rdx

// Store
lea addresses_UC+0x871c, %rcx
clflush (%rcx)
nop
nop
add %rsi, %rsi
movl $0x51525354, (%rcx)
nop
nop
nop
cmp $25536, %rdx

// Store
lea addresses_WC+0x221c, %r13
nop
nop
add $17680, %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm1
movups %xmm1, (%r13)
nop
nop
inc %r9

// Load
mov $0xfe49f0000000c5c, %r9
nop
nop
nop
nop
nop
sub %rcx, %rcx
movups (%r9), %xmm5
vpextrq $1, %xmm5, %rbp
nop
nop
nop
nop
nop
add %rcx, %rcx

// Faulty Load
lea addresses_D+0xf71c, %rcx
nop
nop
nop
nop
nop
and %rbx, %rbx
movb (%rcx), %r13b
lea oracles, %rbp
and $0xff, %r13
shlq $12, %r13
mov (%rbp,%r13,1), %r13
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'36': 27}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
