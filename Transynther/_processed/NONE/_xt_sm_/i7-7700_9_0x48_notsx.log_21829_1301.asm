.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1345f, %rbp
xor $8177, %r14
movw $0x6162, (%rbp)
nop
nop
nop
nop
nop
inc %r12
lea addresses_D_ht+0x1caaf, %rcx
nop
nop
nop
nop
nop
cmp $18543, %r13
movl $0x61626364, (%rcx)
nop
inc %rbp
lea addresses_A_ht+0x1cd2f, %rsi
lea addresses_A_ht+0x1bbeb, %rdi
nop
nop
nop
nop
and $51847, %r13
mov $91, %rcx
rep movsl
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0xbb0b, %rax
nop
nop
nop
sub $20877, %rdi
vmovups (%rax), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
nop
nop
nop
cmp $47342, %r12
lea addresses_D_ht+0x1b92f, %rsi
lea addresses_A_ht+0x282f, %rdi
nop
and %rdx, %rdx
mov $7, %rcx
rep movsq
nop
nop
add %r13, %r13
lea addresses_D_ht+0x552f, %rsi
lea addresses_D_ht+0x1aaf9, %rdi
nop
nop
nop
nop
sub $44182, %rdx
mov $40, %rcx
rep movsl
nop
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0x1016f, %rbp
nop
nop
inc %r13
vmovups (%rbp), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
nop
nop
nop
inc %rbp
lea addresses_WC_ht+0x1554f, %rbp
sub $60745, %rsi
movw $0x6162, (%rbp)
nop
nop
nop
nop
inc %rax
lea addresses_D_ht+0x1672f, %rsi
lea addresses_D_ht+0x1779b, %rdi
nop
nop
nop
dec %rbp
mov $91, %rcx
rep movsl
nop
nop
nop
nop
xor $59249, %rax
lea addresses_WC_ht+0xfde4, %rsi
lea addresses_normal_ht+0x15d2f, %rdi
nop
nop
nop
nop
nop
dec %rax
mov $72, %rcx
rep movsl
nop
dec %rcx
lea addresses_WT_ht+0x1e0af, %rsi
lea addresses_D_ht+0x50ff, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $63605, %rax
mov $122, %rcx
rep movsw
nop
nop
cmp $58811, %rdx
lea addresses_WC_ht+0x4f2f, %rbp
clflush (%rbp)
nop
nop
nop
xor $38057, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%rbp)
nop
nop
sub $43957, %r12
lea addresses_D_ht+0x1512f, %rdi
and $4885, %rdx
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%rdi)
nop
add %rbp, %rbp
lea addresses_WT_ht+0x1e0f5, %rdi
nop
xor $23263, %r14
movups (%rdi), %xmm0
vpextrq $1, %xmm0, %r13
nop
mfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r9
push %rcx
push %rdx

// Store
lea addresses_PSE+0x1792f, %rdx
nop
nop
add $23411, %r14
movl $0x51525354, (%rdx)
nop
nop
add $61047, %rcx

// Store
lea addresses_A+0x12c8b, %r15
clflush (%r15)
inc %rdx
movl $0x51525354, (%r15)
nop
cmp $36590, %r10

// Store
lea addresses_RW+0x94af, %r11
nop
nop
nop
nop
nop
xor $7923, %r9
movb $0x51, (%r11)
nop
nop
nop
nop
xor $14809, %rcx

// Load
lea addresses_UC+0x4673, %r9
nop
sub %r11, %r11
mov (%r9), %r10w
nop
nop
nop
sub $8610, %rcx

// Store
lea addresses_A+0x1c32f, %r11
nop
nop
dec %r14
movb $0x51, (%r11)
nop
nop
nop
nop
nop
inc %r11

// Store
lea addresses_US+0x1d12f, %r10
nop
nop
nop
nop
xor $65278, %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm5
vmovups %ymm5, (%r10)
nop
nop
cmp %r14, %r14

// Load
lea addresses_WT+0x1dfdf, %r11
sub $24720, %rdx
mov (%r11), %r9w
nop
nop
nop
nop
sub %rcx, %rcx

// Store
mov $0x12f, %r14
nop
nop
nop
nop
sub $5109, %r9
movl $0x51525354, (%r14)
nop
nop
nop
and %r10, %r10

// Load
mov $0x92f, %r11
nop
sub $25332, %r14
movb (%r11), %dl
nop
nop
nop
nop
dec %r9

// Faulty Load
lea addresses_PSE+0x1792f, %r11
clflush (%r11)
nop
nop
nop
nop
nop
cmp $60720, %r9
mov (%r11), %r14d
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_PSE', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_P', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_P', 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 2}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
