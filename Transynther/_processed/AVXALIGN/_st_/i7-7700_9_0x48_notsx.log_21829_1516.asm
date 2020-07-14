.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x126ec, %rsi
nop
nop
nop
nop
sub $2198, %r11
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
add %r11, %r11
lea addresses_WT_ht+0x1b6ec, %r8
nop
and %rdi, %rdi
movb (%r8), %r10b
nop
and %rdi, %rdi
lea addresses_A_ht+0xa108, %rsi
lea addresses_D_ht+0x19287, %rdi
nop
nop
cmp %r10, %r10
mov $7, %rcx
rep movsb
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x302c, %rsi
lea addresses_A_ht+0xa3ec, %rdi
clflush (%rdi)
sub $40683, %rbx
mov $69, %rcx
rep movsl
nop
add %r10, %r10
lea addresses_normal_ht+0x10eec, %rsi
lea addresses_UC_ht+0x1baec, %rdi
nop
nop
nop
nop
sub $65166, %r13
mov $37, %rcx
rep movsb
nop
nop
cmp $52118, %r11
lea addresses_normal_ht+0x10acc, %rcx
nop
nop
and %r13, %r13
mov (%rcx), %si
nop
nop
nop
and %r13, %r13
lea addresses_D_ht+0x13e6c, %r10
nop
nop
nop
and $3103, %r8
movups (%r10), %xmm0
vpextrq $1, %xmm0, %r13
nop
nop
nop
nop
nop
xor $19122, %r10
lea addresses_WT_ht+0xd590, %r13
clflush (%r13)
inc %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm4
movups %xmm4, (%r13)
nop
sub $36475, %rbx
lea addresses_WC_ht+0x424c, %rsi
lea addresses_A_ht+0x1b0ac, %rdi
nop
nop
nop
xor $61033, %rbx
mov $114, %rcx
rep movsw
add %rdi, %rdi
lea addresses_normal_ht+0x1716c, %rsi
nop
nop
add $20893, %r13
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r11
sub $29765, %r10
lea addresses_UC_ht+0x3e6c, %rsi
lea addresses_WC_ht+0xc924, %rdi
nop
nop
nop
nop
nop
dec %r13
mov $18, %rcx
rep movsw
cmp %r10, %r10
lea addresses_WT_ht+0x1adec, %r10
nop
nop
nop
nop
nop
sub $5422, %r11
mov (%r10), %rsi
nop
nop
xor $19778, %rdi
lea addresses_WT_ht+0x234c, %r8
nop
nop
inc %r10
mov (%r8), %r11w
nop
nop
nop
nop
and $32049, %rcx
lea addresses_WC_ht+0x536c, %r13
and %r11, %r11
mov (%r13), %r8d
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_UC_ht+0x4048, %r13
clflush (%r13)
nop
xor $60480, %r10
movl $0x61626364, (%r13)
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rbp
push %rdi
push %rsi

// Store
lea addresses_A+0xeaec, %rsi
nop
nop
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %r8
movq %r8, (%rsi)
nop
xor %rbp, %rbp

// Store
lea addresses_normal+0x412c, %r10
lfence
mov $0x5152535455565758, %rsi
movq %rsi, (%r10)
nop
nop
nop
sub $17669, %r13

// Store
lea addresses_A+0xd7c0, %r10
nop
nop
dec %r8
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r10)

// Exception!!!
nop
nop
nop
nop
mov (0), %r10
nop
and $41323, %r13

// Store
lea addresses_WT+0x18aec, %rdi
nop
nop
and %r15, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rdi)
nop
add $14947, %r13

// Load
mov $0x31666f0000000a8a, %rsi
nop
nop
cmp %rdi, %rdi
vmovups (%rsi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r15
nop
nop
nop
nop
inc %r10

// Store
mov $0x472c860000000604, %rbp
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm7
vmovups %ymm7, (%rbp)
nop
nop
nop
nop
nop
xor %r10, %r10

// Load
lea addresses_US+0x9eec, %r15
clflush (%r15)
nop
sub $29534, %r8
mov (%r15), %bp
nop
and $41619, %rdi

// Load
lea addresses_normal+0x1caec, %r13
nop
nop
sub %rsi, %rsi
movb (%r13), %r10b

// Exception!!!
nop
mov (0), %rdi
nop
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_UC+0x1462c, %r15
nop
cmp $49764, %r10
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
add %r10, %r10

// Faulty Load
lea addresses_WT+0x136ec, %rsi
nop
nop
nop
dec %r15
movb (%rsi), %r8b
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rsi
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 6}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
