.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xf63c, %rsi
lea addresses_WC_ht+0xc93f, %rdi
nop
nop
nop
nop
nop
sub %r8, %r8
mov $22, %rcx
rep movsb
nop
xor %rsi, %rsi
lea addresses_D_ht+0x1ecb7, %rcx
nop
nop
nop
cmp %r10, %r10
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbx
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x17bbf, %r10
nop
xor $9932, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
movups %xmm7, (%r10)
nop
nop
nop
add %r10, %r10
lea addresses_D_ht+0xc5bf, %rbx
nop
nop
nop
nop
nop
cmp $53527, %rdx
vmovups (%rbx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
nop
inc %r8
lea addresses_WC_ht+0x97bf, %rdx
nop
nop
nop
nop
add $56713, %r8
vmovups (%rdx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbx
nop
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x1dfbf, %rsi
lea addresses_WC_ht+0x1ddbf, %rdi
nop
nop
nop
nop
nop
and $25480, %rbx
mov $110, %rcx
rep movsb
nop
and $38695, %rcx
lea addresses_WC_ht+0x10d73, %r10
dec %rcx
movups (%r10), %xmm2
vpextrq $0, %xmm2, %r8
nop
nop
inc %r8
lea addresses_UC_ht+0xa9d1, %rsi
nop
add %r8, %r8
movb $0x61, (%rsi)
nop
nop
nop
nop
xor $59901, %rsi
lea addresses_normal_ht+0x1adbf, %rsi
lea addresses_A_ht+0x1b0ff, %rdi
nop
nop
and %r11, %r11
mov $94, %rcx
rep movsq
nop
and $13137, %rsi
lea addresses_A_ht+0xf9bf, %rdx
nop
nop
nop
add %r8, %r8
movl $0x61626364, (%rdx)
nop
and %rdx, %rdx
lea addresses_D_ht+0x1cdbf, %rsi
lea addresses_WT_ht+0xcdbf, %rdi
nop
and $30455, %rdx
mov $23, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x19c67, %rsi
inc %rdi
mov (%rsi), %cx
nop
nop
nop
nop
and $62090, %r10
lea addresses_UC_ht+0x1b9bf, %rsi
lea addresses_UC_ht+0x37bf, %rdi
dec %rdx
mov $27, %rcx
rep movsq
dec %rcx
lea addresses_WC_ht+0x15c46, %rsi
lea addresses_UC_ht+0x18cab, %rdi
clflush (%rdi)
nop
sub $36034, %r11
mov $54, %rcx
rep movsw
nop
nop
xor $65044, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %r9
push %rbx
push %rdi

// Store
lea addresses_UC+0x175bf, %rdi
nop
nop
and $3263, %rbx
movb $0x51, (%rdi)
nop
xor %rbx, %rbx

// Store
lea addresses_UC+0x175bf, %r10
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r10)
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_WC+0x284f, %rbx
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
nop
nop
nop
and $61461, %r9

// Faulty Load
lea addresses_UC+0x175bf, %r9
nop
nop
nop
add $39043, %rbx
vmovups (%r9), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r10
lea oracles, %r13
and $0xff, %r10
shlq $12, %r10
mov (%r13,%r10,1), %r10
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 1, 'NT': True, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'37': 21829}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
