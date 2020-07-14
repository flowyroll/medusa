.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x12af2, %r14
and $1395, %r13
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
dec %rbp
lea addresses_normal_ht+0x1d22a, %r8
nop
nop
nop
nop
nop
inc %r13
and $0xffffffffffffffc0, %r8
vmovaps (%r8), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r11
nop
nop
nop
nop
and $273, %r11
lea addresses_WC_ht+0x109b2, %r14
nop
sub $50172, %r8
and $0xffffffffffffffc0, %r14
movntdqa (%r14), %xmm5
vpextrq $1, %xmm5, %r12
nop
and %r12, %r12
lea addresses_A_ht+0x2bd2, %rsi
lea addresses_normal_ht+0x12aca, %rdi
clflush (%rsi)
nop
nop
nop
add %r12, %r12
mov $7, %rcx
rep movsq
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x13db2, %rsi
lea addresses_UC_ht+0x14db2, %rdi
clflush (%rsi)
nop
and $12299, %r14
mov $107, %rcx
rep movsw
nop
nop
nop
add $41511, %r12
lea addresses_WT_ht+0x17cf2, %rsi
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
movups %xmm0, (%rsi)
nop
add $33492, %r11
lea addresses_normal_ht+0x12a32, %rdi
clflush (%rdi)
nop
xor %r13, %r13
mov (%rdi), %r11d
xor $43542, %rdi
lea addresses_WC_ht+0x1a9b2, %r11
nop
and $40914, %rcx
vmovups (%r11), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r8
nop
sub %r11, %r11
lea addresses_WC_ht+0x199b2, %r12
nop
nop
nop
add %r14, %r14
mov (%r12), %r11w
nop
nop
nop
nop
add $2972, %r14
lea addresses_WT_ht+0x13d0a, %rsi
clflush (%rsi)
nop
nop
and $36734, %r11
movb (%rsi), %r8b
nop
dec %r11
lea addresses_D_ht+0x1b39a, %rsi
xor %r13, %r13
mov (%rsi), %r11w
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x12132, %rsi
lea addresses_normal_ht+0x4fb2, %rdi
xor $39351, %r11
mov $125, %rcx
rep movsb
sub $24479, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rax
push %rbx
push %rcx
push %rsi

// Store
mov $0x93d, %rsi
nop
nop
nop
add %rcx, %rcx
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
add $45050, %rsi

// Store
lea addresses_UC+0x151b2, %rcx
nop
nop
nop
nop
nop
and $63974, %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
add %rax, %rax

// Load
lea addresses_US+0x413e, %rbx
nop
nop
nop
cmp %rsi, %rsi
movb (%rbx), %cl
nop
nop
nop
nop
nop
add %rcx, %rcx

// Store
mov $0x1b2, %rsi
nop
nop
nop
nop
add $405, %r11
movl $0x51525354, (%rsi)
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_RW+0x7b9e, %rsi
nop
nop
and $45429, %r10
mov $0x5152535455565758, %r15
movq %r15, %xmm4
vmovups %ymm4, (%rsi)
nop
xor $7640, %r10

// Load
mov $0x3b2, %r10
xor $56801, %rbx
mov (%r10), %rcx
nop
cmp $13303, %rcx

// Load
mov $0x6ac, %rsi
nop
nop
nop
nop
nop
cmp %r10, %r10
movups (%rsi), %xmm5
vpextrq $1, %xmm5, %rbx
nop
nop
nop
nop
sub %rax, %rax

// Faulty Load
lea addresses_PSE+0x59b2, %r15
nop
nop
cmp $366, %rcx
movaps (%r15), %xmm5
vpextrq $1, %xmm5, %rax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_PSE', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'44': 15001, 'bf': 3, '45': 62, '38': 1, '00': 4586, '48': 2176}
44 44 44 48 44 44 44 44 38 00 44 44 44 44 44 00 44 44 48 00 44 44 00 44 44 44 44 44 44 00 44 00 44 00 44 44 48 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 48 48 44 00 44 00 44 44 44 44 44 44 48 00 44 00 44 44 44 44 00 44 44 44 44 44 48 00 44 44 44 48 00 44 44 44 44 44 44 00 44 00 44 48 44 44 44 44 00 44 44 44 00 44 44 44 00 00 44 44 44 44 44 48 44 44 44 44 44 44 00 00 00 00 44 48 00 44 00 44 00 44 44 44 44 44 48 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 00 44 48 00 00 00 44 44 48 00 44 00 00 44 44 00 48 00 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 00 00 44 44 44 00 44 44 44 00 44 44 44 48 44 44 44 48 44 44 48 00 44 44 00 44 00 48 44 44 48 00 44 48 44 00 44 44 48 44 44 44 48 00 44 48 44 44 44 44 00 00 44 44 44 48 44 44 44 00 00 44 44 48 44 00 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 48 44 44 00 44 44 00 00 44 44 48 44 44 48 44 44 00 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 48 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 48 44 00 44 00 44 00 44 44 44 44 44 00 44 44 44 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 48 00 48 00 44 44 44 44 00 44 48 44 00 44 00 44 00 44 00 00 44 44 44 44 00 44 44 44 44 44 44 00 44 00 00 44 00 44 44 44 00 44 48 44 44 00 44 00 00 44 44 44 44 00 44 44 44 00 00 44 00 44 44 44 44 44 44 44 44 48 44 44 44 44 44 44 44 00 44 00 44 44 44 44 48 00 00 00 44 48 44 44 44 44 44 44 44 44 00 48 44 44 44 44 00 44 44 44 00 00 44 44 44 44 00 44 00 44 44 44 44 44 44 44 48 44 44 00 44 00 44 44 00 44 44 44 44 44 48 00 44 48 00 44 48 44 44 44 44 48 44 44 00 44 00 48 00 44 44 00 44 00 44 48 44 00 44 44 44 44 00 44 44 44 44 48 44 44 44 48 44 44 44 44 44 44 44 44 00 00 44 48 44 00 44 00 44 44 48 00 44 00 44 48 44 44 44 44 00 44 44 44 48 00 44 48 00 44 44 44 44 48 00 44 00 44 48 44 48 00 00 44 44 44 44 00 44 44 44 44 44 00 00 00 00 44 48 44 00 44 44 00 00 44 48 44 00 00 44 44 44 44 44 00 48 44 44 00 44 44 44 44 00 44 44 44 44 44 00 48 44 44 44 44 44 44 44 00 44 44 44 00 48 00 44 44 00 00 44 44 44 44 44 44 44 00 44 44 44 00 44 00 48 44 44 00 44 44 44 44 44 00 44 44 00 44 44 44 00 48 00 44 44 00 48 00 44 44 44 44 44 00 44 00 44 00 48 00 44 44 00 44 00 44 44 44 44 44 44 00 44 00 44 00 00 00 44 00 44 44 00 44 48 00 44 00 44 48 00 44 44 00 00 44 44 44 44 44 44 00 44 44 44 48 00 48 44 00 44 44 44 44 44 44 00 44 44 44 44 44 00 00 44 44 00 00 44 48 44 00 44 48 44 44 00 44 00 00 44 00 44 48 44 44 48 44 44 44 44 44 44 44 44 00 44 44 48 44 44 48 00 00 44 44 44 44 44 44 44 44 00 44 48 00 44 44 00 44 00 44 00 44 44 44 48 00 44 44 44 00 00 44 44 00 48 00 44 48 00 44 48 44 44 48 00 44 44 44 48 00 44 44 44 44 44 44 00 44 44 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 48 44 44 48 44 44 44 00 44 00 44 44 44 44 44 44 48 44 48 44 44 44 44 44 44 44 44 00 44 44 44 00 48 00 44 44 44 48 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 48 00 44 44 44 00
*/
