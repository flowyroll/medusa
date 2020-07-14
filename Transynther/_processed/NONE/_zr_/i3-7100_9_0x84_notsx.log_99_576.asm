.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rax
push %rbp
push %rbx
push %rdx
lea addresses_WC_ht+0x1b5bf, %rdx
nop
nop
nop
nop
xor $63529, %r11
movw $0x6162, (%rdx)
and %rdx, %rdx
lea addresses_UC_ht+0x14cb, %rax
nop
nop
nop
nop
nop
add $65072, %rbx
mov (%rax), %r13
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_A_ht+0x8e4b, %rbx
cmp %r10, %r10
mov (%rbx), %r11w
nop
nop
nop
nop
add %r11, %r11
lea addresses_UC_ht+0x19ecb, %rbx
nop
xor $58453, %rax
vmovups (%rbx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r13
nop
add $9485, %rbx
lea addresses_A_ht+0x1918b, %rbx
nop
sub $47627, %r10
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
xor $18993, %rbp
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx

// Load
lea addresses_WT+0x834b, %rdx
nop
nop
nop
nop
cmp %rdi, %rdi
movb (%rdx), %r11b
sub %r15, %r15

// Store
lea addresses_UC+0xd64b, %rdi
nop
nop
nop
sub $45720, %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
vmovaps %ymm3, (%rdi)
nop
nop
cmp $7760, %rbx

// Store
lea addresses_WC+0xb56b, %rcx
nop
nop
nop
inc %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%rcx)
inc %rdi

// Load
lea addresses_A+0x9e4b, %rbx
nop
nop
nop
nop
xor $4432, %rdx
mov (%rbx), %r14w
nop
nop
nop
nop
add $38370, %rdx

// Load
lea addresses_A+0x9e4b, %rdi
nop
add %rdx, %rdx
movb (%rdi), %bl
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_WC+0x1364b, %rcx
nop
cmp $19600, %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_A+0xbcc1, %rcx
add %r15, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm4
movups %xmm4, (%rcx)
nop
dec %rcx

// Faulty Load
lea addresses_A+0x9e4b, %r15
nop
nop
inc %rdi
mov (%r15), %ebx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 99}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
