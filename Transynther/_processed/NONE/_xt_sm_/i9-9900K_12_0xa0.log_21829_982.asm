.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1b59a, %rdi
nop
nop
nop
nop
xor $23924, %r9
mov $0x6162636465666768, %r12
movq %r12, (%rdi)
nop
nop
nop
nop
nop
inc %rbx
lea addresses_A_ht+0xfc1e, %rdx
nop
nop
nop
sub $11072, %r8
movups (%rdx), %xmm4
vpextrq $1, %xmm4, %rax
nop
nop
nop
add $31410, %rdi
lea addresses_WC_ht+0x73e, %rsi
lea addresses_A_ht+0x587e, %rdi
clflush (%rsi)
nop
nop
nop
cmp %rdx, %rdx
mov $77, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %r12
lea addresses_normal_ht+0xa0be, %r9
clflush (%r9)
nop
nop
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm4
movups %xmm4, (%r9)
sub $2658, %rdx
lea addresses_WT_ht+0x95a0, %r12
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov (%r12), %rsi
nop
nop
nop
nop
xor %rax, %rax
lea addresses_D_ht+0x2bbe, %rsi
nop
nop
nop
nop
add %rdi, %rdi
movb (%rsi), %r12b
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x7cbe, %rcx
clflush (%rcx)
nop
nop
add $50297, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
and $24493, %rax
lea addresses_UC_ht+0x12cbe, %rdx
nop
nop
nop
nop
cmp %r12, %r12
movups (%rdx), %xmm1
vpextrq $1, %xmm1, %rbx
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x1cbe, %rbx
nop
nop
xor $1973, %rcx
movw $0x6162, (%rbx)
xor %rsi, %rsi
lea addresses_WT_ht+0x44be, %rax
nop
nop
nop
inc %r9
mov (%rax), %r8d
nop
nop
nop
nop
nop
and $44243, %rsi
lea addresses_A_ht+0x116be, %rbx
nop
nop
nop
sub $13985, %r9
mov $0x6162636465666768, %r8
movq %r8, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0xa8be, %r8
nop
nop
add $9871, %rsi
movw $0x6162, (%r8)
nop
nop
nop
and %r12, %r12
lea addresses_WC_ht+0x1a11a, %r12
nop
nop
nop
nop
nop
and %rsi, %rsi
mov (%r12), %r8w
nop
nop
nop
nop
and %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rcx
push %rdi
push %rdx

// Store
mov $0x92, %r10
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%r10)
nop
nop
nop
nop
nop
and $34672, %r12

// Store
lea addresses_WC+0x1eebe, %r10
nop
nop
nop
nop
cmp $36677, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r10)
nop
nop
nop
sub %r10, %r10

// Store
lea addresses_D+0xd3e, %r10
nop
nop
inc %r12
movw $0x5152, (%r10)
nop
sub %r11, %r11

// Load
mov $0x29931800000002be, %rdi
nop
cmp $64748, %r12
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %r8
nop
nop
nop
nop
nop
xor $52712, %rcx

// Store
lea addresses_WT+0x16cbe, %r11
nop
add %rdi, %rdi
movw $0x5152, (%r11)
nop
and %rdi, %rdi

// Store
lea addresses_WT+0x138ce, %rcx
sub $9602, %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
add %r12, %r12

// Store
lea addresses_normal+0xc08c, %r12
nop
xor $64661, %r11
movl $0x51525354, (%r12)
nop
nop
nop
nop
nop
inc %r11

// Store
lea addresses_A+0x1944e, %r8
nop
nop
nop
nop
xor $11333, %r12
mov $0x5152535455565758, %r10
movq %r10, %xmm6
vmovups %ymm6, (%r8)

// Exception!!!
mov (0), %rcx
nop
add %r11, %r11

// Store
lea addresses_US+0x24be, %r10
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, (%r10)
nop
dec %r8

// Store
lea addresses_WC+0x1673e, %r10
nop
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, (%r10)
inc %r12

// Faulty Load
lea addresses_WT+0x16cbe, %rdx
nop
nop
nop
nop
cmp $11154, %r8
mov (%rdx), %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': True, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': True, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'52': 21829}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
