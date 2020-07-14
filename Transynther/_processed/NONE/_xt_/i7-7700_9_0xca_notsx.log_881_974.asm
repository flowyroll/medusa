.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1b835, %rcx
nop
sub $18820, %r13
mov (%rcx), %eax
sub $30841, %rax
lea addresses_D_ht+0x73d5, %r8
nop
dec %r9
mov $0x6162636465666768, %r10
movq %r10, %xmm4
and $0xffffffffffffffc0, %r8
vmovaps %ymm4, (%r8)
nop
nop
nop
sub $41871, %rcx
lea addresses_A_ht+0xca45, %rsi
lea addresses_A_ht+0x1d715, %rdi
nop
nop
nop
add %r8, %r8
mov $20, %rcx
rep movsl
nop
sub $24163, %rax
lea addresses_UC_ht+0x1df15, %rsi
lea addresses_WT_ht+0x9315, %rdi
and %r8, %r8
mov $45, %rcx
rep movsw
nop
dec %rax
lea addresses_D_ht+0x13f15, %rsi
lea addresses_WC_ht+0x4f15, %rdi
nop
dec %rax
mov $49, %rcx
rep movsw
nop
xor $2562, %rcx
lea addresses_WT_ht+0x315, %rsi
nop
nop
nop
and %r13, %r13
movups (%rsi), %xmm6
vpextrq $0, %xmm6, %r8
nop
nop
nop
dec %rcx
lea addresses_D_ht+0x1af25, %rdi
cmp %r10, %r10
movb (%rdi), %r13b
nop
sub $1606, %rsi
lea addresses_UC_ht+0xdf15, %rcx
nop
nop
nop
nop
add $36151, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm7
and $0xffffffffffffffc0, %rcx
vmovntdq %ymm7, (%rcx)
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x15d0e, %rax
nop
nop
nop
nop
nop
sub $30470, %rcx
movb $0x61, (%rax)
nop
nop
nop
xor $40963, %rdi
lea addresses_UC_ht+0x7915, %r9
nop
nop
nop
add $62986, %rax
movups (%r9), %xmm4
vpextrq $1, %xmm4, %r10
cmp $60080, %rsi
lea addresses_A_ht+0x15f27, %rcx
nop
nop
nop
nop
and $43057, %r13
movups (%rcx), %xmm4
vpextrq $1, %xmm4, %r10
nop
nop
nop
nop
and $1487, %rdi
lea addresses_normal_ht+0x6895, %rsi
lea addresses_UC_ht+0x1b915, %rdi
nop
sub %r9, %r9
mov $57, %rcx
rep movsq
nop
nop
nop
nop
sub $45209, %rax
lea addresses_D_ht+0x11115, %r8
nop
cmp $38990, %rax
movb $0x61, (%r8)
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x4835, %rax
xor $18086, %rdi
mov (%rax), %r8w
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x4315, %r9
clflush (%r9)
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rax
movq %rax, %xmm2
and $0xffffffffffffffc0, %r9
vmovaps %ymm2, (%r9)
nop
nop
nop
sub %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rsi

// Load
lea addresses_RW+0x19495, %rdi
nop
nop
nop
sub %r13, %r13
mov (%rdi), %esi
nop
nop
nop
nop
and $15550, %r9

// Store
lea addresses_RW+0xad15, %r9
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %rdi
movq %rdi, (%r9)
nop
nop
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_A+0xc8eb, %r9
nop
nop
add %r13, %r13
movl $0x51525354, (%r9)
nop
nop
and $6940, %r12

// Store
lea addresses_UC+0x1f7c5, %rcx
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
nop
dec %r12

// Store
lea addresses_PSE+0x1b515, %r12
and %r9, %r9
movl $0x51525354, (%r12)
nop
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_UC+0xa595, %r9
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r12
movq %r12, (%r9)
nop
nop
inc %r12

// Store
lea addresses_normal+0x18f15, %rdi
nop
cmp $1980, %r9
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
xor $36709, %r9

// Store
lea addresses_normal+0xb4f5, %rdi
clflush (%rdi)
nop
add %r14, %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm3
movups %xmm3, (%rdi)
cmp %rsi, %rsi

// Store
lea addresses_A+0x12315, %r12
add %r9, %r9
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movaps %xmm1, (%r12)
nop
dec %r12

// Faulty Load
lea addresses_normal+0x2f15, %rsi
nop
nop
nop
cmp %r9, %r9
vmovups (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r12
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'34': 881}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
