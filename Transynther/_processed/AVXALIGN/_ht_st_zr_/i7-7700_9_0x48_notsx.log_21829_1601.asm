.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1a98b, %r13
nop
sub $39566, %rbx
mov $0x6162636465666768, %r10
movq %r10, %xmm2
and $0xffffffffffffffc0, %r13
vmovaps %ymm2, (%r13)
nop
nop
nop
nop
nop
sub $45567, %rcx
lea addresses_UC_ht+0x19c0b, %r15
nop
nop
nop
xor %r14, %r14
vmovups (%r15), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r12
nop
nop
nop
nop
nop
inc %rbx
lea addresses_A_ht+0x1bd9b, %rsi
lea addresses_WC_ht+0x3ceb, %rdi
nop
and %rbx, %rbx
mov $58, %rcx
rep movsl
xor $59022, %rsi
lea addresses_D_ht+0xd68b, %rsi
lea addresses_normal_ht+0x698b, %rdi
nop
nop
xor %r15, %r15
mov $25, %rcx
rep movsq
nop
nop
nop
nop
cmp $6385, %rdi
lea addresses_WT_ht+0x8b8b, %r14
nop
dec %r12
movb $0x61, (%r14)
xor $11645, %rcx
lea addresses_WC_ht+0x4f6b, %rsi
lea addresses_normal_ht+0x12f8b, %rdi
nop
cmp $45323, %r13
mov $75, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_UC_ht+0x1dc8b, %rsi
nop
nop
nop
nop
nop
xor $42036, %r14
mov (%rsi), %r10
nop
nop
nop
nop
and $35199, %r10
lea addresses_D_ht+0xb98b, %rsi
lea addresses_WC_ht+0x1b44b, %rdi
nop
nop
nop
nop
cmp %r10, %r10
mov $70, %rcx
rep movsb
nop
nop
nop
add $6448, %rsi
lea addresses_WC_ht+0x1c133, %rsi
lea addresses_UC_ht+0x11a0b, %rdi
clflush (%rsi)
nop
nop
nop
nop
and %r12, %r12
mov $5, %rcx
rep movsw
nop
xor %r13, %r13
lea addresses_WC_ht+0x17579, %rsi
nop
nop
nop
nop
dec %r13
movw $0x6162, (%rsi)
nop
nop
nop
dec %r13
lea addresses_UC_ht+0x46c7, %r13
nop
inc %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm3
vmovups %ymm3, (%r13)
nop
add $39132, %r10
lea addresses_A_ht+0x1b8b, %rdi
nop
xor $54579, %rsi
mov $0x6162636465666768, %r10
movq %r10, (%rdi)
nop
nop
nop
and %r15, %r15
lea addresses_UC_ht+0x1d8b, %rbx
nop
nop
nop
nop
xor $35767, %r10
movb $0x61, (%rbx)
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x14f4b, %r13
nop
nop
nop
sub %rdi, %rdi
movb (%r13), %r14b
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x598b, %r15
nop
nop
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm6
vmovups %ymm6, (%r15)
nop
nop
cmp $2729, %r15

// Store
lea addresses_D+0x1b58b, %r9
nop
nop
and $25963, %r15
movl $0x51525354, (%r9)
nop
nop
sub %r9, %r9

// Store
lea addresses_D+0x1bd47, %rdi
nop
nop
cmp $19144, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
inc %rdi

// REPMOV
lea addresses_A+0x1ecd3, %rsi
lea addresses_D+0x178b, %rdi
nop
add $36234, %r15
mov $39, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Load
lea addresses_UC+0xb18b, %r13
nop
nop
nop
nop
nop
and %r10, %r10
movups (%r13), %xmm3
vpextrq $1, %xmm3, %r9
nop
nop
nop
nop
cmp %rdi, %rdi

// Load
lea addresses_WC+0x4a8b, %r10
nop
xor $19861, %rdi
vmovups (%r10), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r13
nop
nop
nop
inc %rcx

// REPMOV
lea addresses_A+0x1518b, %rsi
lea addresses_normal+0x6e7b, %rdi
nop
nop
nop
inc %r15
mov $88, %rcx
rep movsb
nop
nop
nop
nop
and $32407, %r9

// Store
lea addresses_WT+0x1b38b, %r10
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, (%r10)
nop
nop
nop
nop
inc %r11

// Store
lea addresses_RW+0x1d14b, %rdi
nop
nop
nop
nop
sub $12258, %rcx
mov $0x5152535455565758, %r13
movq %r13, (%rdi)
nop
nop
nop
nop
nop
xor $39414, %r13

// Store
mov $0xa05b9000000018b, %rbx
nop
nop
sub %r10, %r10
movw $0x5152, (%rbx)
nop
nop
nop
nop
and %r9, %r9

// Faulty Load
lea addresses_UC+0xb18b, %r10
nop
nop
nop
sub %r9, %r9
movaps (%r10), %xmm0
vpextrq $1, %xmm0, %rbx
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 10}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_UC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 7}}
{'dst': {'same': True, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 6}}
{'48': 51, '35': 15, '38': 99, '00': 21643, '45': 8, '46': 13}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 38 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 38 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 38 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 38 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00
*/
