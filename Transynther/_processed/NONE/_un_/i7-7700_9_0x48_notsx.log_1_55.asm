.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xbe8, %rbx
nop
nop
nop
sub %r14, %r14
movb (%rbx), %r10b
nop
nop
cmp $9086, %r9
lea addresses_A_ht+0x139e8, %rsi
lea addresses_UC_ht+0x5d68, %rdi
nop
nop
add %r9, %r9
mov $56, %rcx
rep movsb
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x1be8, %rsi
inc %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x13548, %rsi
lea addresses_D_ht+0x5f5c, %rdi
nop
nop
nop
nop
nop
xor $36254, %r15
mov $115, %rcx
rep movsb
nop
nop
cmp $19072, %r14
lea addresses_A_ht+0x10098, %rsi
nop
nop
nop
dec %r10
movups (%rsi), %xmm0
vpextrq $1, %xmm0, %r9
nop
nop
nop
nop
nop
add $47729, %r14
lea addresses_UC_ht+0x1ea64, %r15
nop
nop
nop
nop
add $44039, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r15)
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x19b9e, %rsi
lea addresses_A_ht+0x13388, %rdi
nop
nop
nop
nop
nop
sub $4225, %rbx
mov $76, %rcx
rep movsb
nop
inc %r15
lea addresses_UC_ht+0x1afe8, %rsi
lea addresses_UC_ht+0x119e8, %rdi
nop
nop
inc %r10
mov $77, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x1cf20, %rsi
lea addresses_D_ht+0x185d4, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $38894, %r10
mov $69, %rcx
rep movsl
dec %rdi
lea addresses_UC_ht+0x12de8, %rcx
nop
nop
nop
add $35716, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm0
movups %xmm0, (%rcx)
nop
xor %rcx, %rcx
lea addresses_WC_ht+0xbbe8, %r10
cmp %r15, %r15
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
movups %xmm5, (%r10)
nop
nop
add $15436, %r14
lea addresses_normal_ht+0x157e8, %rdi
nop
nop
nop
nop
xor $2506, %rsi
movb (%rdi), %r15b
nop
nop
nop
nop
cmp $38834, %rcx
lea addresses_UC_ht+0x5328, %r15
nop
nop
sub $24177, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm5
vmovups %ymm5, (%r15)
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x16be8, %rbx
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm0
movups %xmm0, (%rbx)
nop
inc %r14
lea addresses_WT_ht+0x16500, %rbx
add $53497, %r14
movb (%rbx), %cl
nop
nop
nop
nop
nop
add $44911, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rsi

// Store
mov $0x57041700000009b8, %rsi
nop
nop
nop
nop
inc %r10
movb $0x51, (%rsi)
nop
nop
add %r15, %r15

// Store
mov $0x1c01620000000dba, %rcx
nop
sub %r12, %r12
mov $0x5152535455565758, %r15
movq %r15, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
nop
nop
xor $41239, %r10

// Load
lea addresses_PSE+0x111e8, %r12
nop
nop
nop
cmp $44048, %rcx
vmovups (%r12), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r15
nop
nop
nop
nop
nop
inc %r12

// Store
lea addresses_A+0x1815c, %r12
xor %r15, %r15
movl $0x51525354, (%r12)
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_normal+0x53e8, %r15
clflush (%r15)
nop
sub %rdi, %rdi
movl $0x51525354, (%r15)

// Exception!!!
nop
nop
mov (0), %rcx
nop
sub $54766, %rsi

// Store
lea addresses_normal+0xe5e8, %rdi
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movaps %xmm0, (%rdi)
nop
nop
xor %r10, %r10

// Store
lea addresses_UC+0xd9c8, %rdi
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
nop
add %r10, %r10

// Load
mov $0xb28, %rdi
nop
nop
nop
nop
and %r12, %r12
mov (%rdi), %rcx
nop
sub $39223, %rsi

// Store
lea addresses_WT+0x15fe8, %r12
nop
nop
sub %r14, %r14
movb $0x51, (%r12)
sub $47435, %rsi

// Store
lea addresses_normal+0x1f0e8, %rcx
clflush (%rcx)
add %rsi, %rsi
movl $0x51525354, (%rcx)
sub $17566, %rdi

// REPMOV
mov $0xba0, %rsi
lea addresses_RW+0x19468, %rdi
nop
nop
nop
cmp %r15, %r15
mov $83, %rcx
rep movsw
nop
and %r15, %r15

// Faulty Load
lea addresses_D+0xc3e8, %rcx
cmp $37557, %r15
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_normal', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_P', 'congruent': 5}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_RW'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_P'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 6}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'6a': 1}
6a
*/
