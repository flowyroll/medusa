.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xd249, %rax
nop
xor %rbx, %rbx
mov (%rax), %r15w
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0xfe61, %rbx
nop
nop
xor $56302, %r12
movl $0x61626364, (%rbx)
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x155d1, %r12
nop
nop
nop
nop
and $56091, %rcx
mov (%r12), %r14d
nop
nop
nop
dec %rbx
lea addresses_WC_ht+0x1ce80, %rcx
nop
nop
nop
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %rax
movq %rax, (%rcx)
nop
nop
nop
nop
nop
sub $31930, %rbx
lea addresses_UC_ht+0x41d1, %rsi
lea addresses_WT_ht+0x14391, %rdi
nop
nop
nop
nop
nop
sub %rax, %rax
mov $5, %rcx
rep movsb
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0xee31, %rsi
lea addresses_WT_ht+0x100ab, %rdi
nop
nop
nop
xor $36248, %r12
mov $61, %rcx
rep movsb
nop
nop
nop
nop
add $10125, %rdi
lea addresses_A_ht+0x5151, %rsi
lea addresses_A_ht+0x882f, %rdi
nop
nop
nop
add $57933, %r12
mov $12, %rcx
rep movsq
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x12dd1, %rbx
nop
nop
nop
nop
nop
cmp $16161, %r12
mov $0x6162636465666768, %rax
movq %rax, %xmm2
and $0xffffffffffffffc0, %rbx
movntdq %xmm2, (%rbx)
nop
nop
sub $56689, %r15
lea addresses_WT_ht+0x11e51, %r14
and %r12, %r12
movl $0x61626364, (%r14)
nop
nop
mfence
lea addresses_A_ht+0x1a5d1, %rax
nop
nop
nop
nop
and %rcx, %rcx
movl $0x61626364, (%rax)
nop
and $33667, %rbx
lea addresses_WT_ht+0x31d1, %rsi
lea addresses_D_ht+0x11295, %rdi
nop
nop
nop
and %rax, %rax
mov $33, %rcx
rep movsl
lfence
lea addresses_UC_ht+0x1ec91, %r14
nop
nop
nop
nop
nop
inc %r15
movb (%r14), %al
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x7851, %rsi
lea addresses_normal_ht+0xb1f1, %rdi
nop
cmp $44843, %r14
mov $87, %rcx
rep movsq
dec %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rax
push %rbx
push %rsi

// Store
lea addresses_normal+0x11dd1, %r10
nop
nop
nop
nop
nop
and %r13, %r13
mov $0x5152535455565758, %rsi
movq %rsi, (%r10)
nop
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_UC+0x2f71, %r11
nop
nop
nop
nop
xor $1529, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r11)
sub $29989, %r9

// Store
lea addresses_A+0x91d1, %r10
add $65374, %rbx
mov $0x5152535455565758, %rax
movq %rax, %xmm1
vmovups %ymm1, (%r10)
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_WT+0x139d1, %r13
nop
nop
nop
xor $61279, %rax
mov $0x5152535455565758, %r11
movq %r11, (%r13)
nop
nop
nop
nop
xor $58566, %r10

// Store
lea addresses_PSE+0xbfd1, %rbx
nop
nop
add $62166, %rax
movw $0x5152, (%rbx)
nop
nop
nop
nop
and %r9, %r9

// Load
lea addresses_RW+0x1c781, %r13
nop
nop
nop
add $48863, %r10
mov (%r13), %r9w
nop
nop
xor %r9, %r9

// Store
lea addresses_PSE+0x21d1, %rax
nop
nop
nop
nop
nop
dec %r10
movl $0x51525354, (%rax)
nop
nop
nop
xor $48805, %r13

// Store
lea addresses_A+0x91d1, %r11
nop
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
movups %xmm0, (%r11)
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_normal+0xc9d1, %rbx
dec %r10
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%rbx)
cmp $11706, %rsi

// Store
lea addresses_WC+0x167d1, %r10
add $2278, %r13
movw $0x5152, (%r10)
nop
sub $37604, %r10

// Store
lea addresses_normal+0xa731, %rbx
nop
nop
inc %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%rbx)
nop
sub %r9, %r9

// Store
lea addresses_RW+0x1bb45, %rsi
clflush (%rsi)
sub %r13, %r13
movl $0x51525354, (%rsi)
sub $9579, %r11

// Load
lea addresses_PSE+0x5851, %r10
cmp %rbx, %rbx
mov (%r10), %r13d
nop
nop
nop
xor %r13, %r13

// Load
lea addresses_normal+0x1f3d1, %r10
clflush (%r10)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
vmovups (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r9
nop
nop
and $30243, %rax

// Store
lea addresses_normal+0xef1, %r11
nop
nop
nop
and $42348, %r9
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r11)
nop
nop
nop
nop
xor $12052, %r13

// Faulty Load
lea addresses_A+0x91d1, %rsi
clflush (%rsi)
nop
nop
nop
xor $48065, %r13
mov (%rsi), %r11
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 2, 'type': 'addresses_RW', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_PSE', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_PSE', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
