.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
lea addresses_D_ht+0xb6ce, %r12
nop
nop
nop
nop
nop
and $12732, %rdx
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x86ce, %rcx
nop
nop
add $41301, %r12
movw $0x6162, (%rcx)
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x44ce, %r11
nop
xor $41267, %rdi
mov (%r11), %r12
nop
nop
xor %r11, %r11
lea addresses_WT_ht+0x1b4ce, %rdx
nop
nop
nop
nop
add %r9, %r9
mov (%rdx), %cx
nop
nop
add %r9, %r9
lea addresses_normal_ht+0x1ead9, %r12
nop
nop
nop
nop
and $31545, %rdx
mov $0x6162636465666768, %r9
movq %r9, %xmm5
and $0xffffffffffffffc0, %r12
movntdq %xmm5, (%r12)
add %rdx, %rdx
lea addresses_A_ht+0x116ce, %r9
nop
nop
nop
sub %r11, %r11
movb (%r9), %bl
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_normal_ht+0xc0ce, %rbx
nop
nop
nop
cmp $40699, %r12
mov (%rbx), %cx
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_D_ht+0x196ce, %rcx
nop
nop
and $17687, %r12
movl $0x61626364, (%rcx)
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0xd8f6, %rdi
nop
nop
nop
nop
sub %r9, %r9
mov $0x6162636465666768, %r12
movq %r12, (%rdi)
nop
xor %rdi, %rdi
lea addresses_WC_ht+0xeace, %rcx
nop
nop
nop
nop
and %r12, %r12
movb (%rcx), %r9b
nop
inc %rdx
lea addresses_A_ht+0x9ace, %r11
nop
nop
nop
nop
cmp %rbx, %rbx
movw $0x6162, (%r11)
and $24468, %r12
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x56ce, %r13
and %rdi, %rdi
movw $0x5152, (%r13)
nop
nop
nop
nop
nop
and $56289, %rdi

// Load
lea addresses_US+0xe3f4, %rcx
nop
nop
nop
nop
inc %rdi
mov (%rcx), %r8w
nop
nop
nop
nop
nop
xor %rsi, %rsi

// Store
mov $0xb2e, %rcx
nop
nop
nop
and %r15, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
movups %xmm5, (%rcx)
nop
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_US+0xbbc6, %rbx
nop
add %r13, %r13
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
sub $64793, %rbx

// Store
lea addresses_RW+0xa902, %r8
nop
and $42634, %r13
movb $0x51, (%r8)
sub $51280, %r15

// Faulty Load
lea addresses_WT+0x12ece, %r13
nop
nop
add %r15, %r15
vmovups (%r13), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r8
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'39': 715}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
