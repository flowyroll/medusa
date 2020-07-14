.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x12498, %rcx
clflush (%rcx)
sub %r12, %r12
mov $0x6162636465666768, %rax
movq %rax, (%rcx)
nop
nop
nop
nop
nop
xor $26611, %rcx
lea addresses_normal_ht+0x168f8, %rsi
lea addresses_A_ht+0x16a98, %rdi
add $64153, %rax
mov $123, %rcx
rep movsl
xor $4041, %rcx
lea addresses_D_ht+0xf748, %r10
nop
nop
nop
sub %r14, %r14
mov (%r10), %rsi
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x1acf3, %rsi
lea addresses_D_ht+0x23e, %rdi
nop
and %r15, %r15
mov $48, %rcx
rep movsq
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x1608c, %r14
nop
nop
nop
nop
xor $57126, %r15
mov $0x6162636465666768, %r12
movq %r12, %xmm6
movups %xmm6, (%r14)
cmp $6516, %rdi
lea addresses_D_ht+0x18618, %r15
nop
nop
nop
nop
nop
sub %rsi, %rsi
movb (%r15), %cl
nop
nop
nop
nop
and %r14, %r14
lea addresses_WT_ht+0x14880, %r15
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %rax
movq %rax, (%r15)
nop
nop
nop
nop
and $41085, %rsi
lea addresses_UC_ht+0x16498, %r12
nop
nop
cmp $2646, %r14
movw $0x6162, (%r12)
nop
cmp $2237, %rax
lea addresses_D_ht+0x1e698, %rax
nop
nop
inc %r12
vmovups (%rax), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r14
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x4298, %rsi
lea addresses_UC_ht+0x6f98, %rdi
nop
nop
nop
nop
and %r10, %r10
mov $86, %rcx
rep movsl
nop
nop
nop
nop
xor $25862, %rsi
lea addresses_normal_ht+0x9498, %rsi
lea addresses_WC_ht+0x14a98, %rdi
nop
nop
nop
nop
and $58993, %r12
mov $54, %rcx
rep movsb
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x7b98, %r10
nop
nop
and %rax, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
movups %xmm0, (%r10)
nop
nop
nop
nop
nop
sub $42020, %r15
lea addresses_WC_ht+0x2a98, %r15
nop
nop
nop
nop
nop
add $7288, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
and $0xffffffffffffffc0, %r15
vmovaps %ymm5, (%r15)
nop
nop
mfence
lea addresses_A_ht+0x9e98, %r14
nop
nop
nop
nop
nop
cmp %rax, %rax
vmovups (%r14), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r15
nop
nop
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x1cf4e, %rsi
lea addresses_A+0xc718, %rdi
sub %r9, %r9
mov $22, %rcx
rep movsq
nop
nop
nop
nop
add %r13, %r13

// Store
lea addresses_WC+0x96c4, %r8
nop
nop
cmp $45983, %r12
movl $0x51525354, (%r8)
nop
nop
nop
cmp $53272, %rdi

// Store
lea addresses_PSE+0xc298, %r9
nop
nop
nop
xor $37993, %rdi
mov $0x5152535455565758, %r13
movq %r13, (%r9)
nop
nop
add %rsi, %rsi

// Store
lea addresses_D+0x2298, %r8
nop
nop
nop
dec %r13
movb $0x51, (%r8)
xor %r8, %r8

// Store
lea addresses_PSE+0x1f898, %r12
nop
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r12)
inc %r9

// Store
lea addresses_A+0x8368, %r8
nop
nop
nop
nop
nop
sub %r12, %r12
movl $0x51525354, (%r8)
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_WC+0x10898, %rdi
nop
nop
nop
cmp $41290, %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rdi)
and $50626, %r13

// Store
lea addresses_D+0x3a98, %r8
sub $17641, %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%r8)
nop
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_D+0x1e5b8, %rsi
nop
nop
nop
sub $7484, %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovntdq %ymm0, (%rsi)
nop
nop
nop
nop
add %r8, %r8

// Store
lea addresses_UC+0x17d56, %r8
nop
nop
add $39930, %rcx
movl $0x51525354, (%r8)
nop
nop
sub %rcx, %rcx

// Store
lea addresses_RW+0x14218, %r12
nop
nop
nop
xor $32288, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r12)
nop
and %r13, %r13

// Store
lea addresses_UC+0xea98, %r13
nop
nop
nop
nop
nop
and $18550, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, (%r13)
cmp %rdi, %rdi

// Faulty Load
lea addresses_D+0x2298, %r9
nop
nop
nop
cmp $37800, %r12
mov (%r9), %r13d
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_UC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 9}}
{'51': 1}
51
*/
