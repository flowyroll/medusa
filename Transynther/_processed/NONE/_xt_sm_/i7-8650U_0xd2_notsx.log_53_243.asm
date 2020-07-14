.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1b9a1, %rsi
lea addresses_A_ht+0x169a1, %rdi
add %r11, %r11
mov $50, %rcx
rep movsw
nop
sub $62946, %r8
lea addresses_normal_ht+0x3f81, %rsi
lea addresses_D_ht+0x8d1, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %r11, %r11
mov $38, %rcx
rep movsw
nop
nop
nop
nop
cmp $3119, %r11
lea addresses_WT_ht+0x1a721, %rbp
nop
add $35090, %rbx
movl $0x61626364, (%rbp)
nop
nop
cmp $60253, %r8
lea addresses_D_ht+0x17124, %rbx
nop
nop
and %rsi, %rsi
mov (%rbx), %bp
nop
cmp %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x30f1, %rsi
nop
nop
nop
nop
nop
add %r10, %r10
mov $0x5152535455565758, %r12
movq %r12, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_WT+0x1142d, %r12
nop
xor %rdi, %rdi
movw $0x5152, (%r12)
and %rbx, %rbx

// Store
lea addresses_A+0x9801, %rdi
nop
nop
nop
nop
nop
cmp %r12, %r12
movl $0x51525354, (%rdi)
nop
nop
nop
and %r13, %r13

// REPMOV
lea addresses_WT+0x19da1, %rsi
lea addresses_WC+0x101a1, %rdi
clflush (%rdi)
xor $34067, %r10
mov $11, %rcx
rep movsw
nop
and %rcx, %rcx

// Store
mov $0x1a1, %r12
clflush (%r12)
nop
nop
nop
nop
dec %r13
movb $0x51, (%r12)
nop
nop
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_A+0x1f8a1, %r10
inc %r13
movw $0x5152, (%r10)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rcx
nop
nop
xor $54754, %rbx

// Store
lea addresses_normal+0xe9a1, %r10
nop
sub $14078, %rdi
mov $0x5152535455565758, %r12
movq %r12, (%r10)
nop
nop
inc %r12

// Store
lea addresses_US+0xeda1, %rcx
nop
nop
nop
nop
xor $51130, %r13
movl $0x51525354, (%rcx)
cmp $634, %rcx

// Load
lea addresses_WC+0x11a1, %rbx
nop
nop
nop
nop
xor %r14, %r14
vmovups (%rbx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
nop
nop
add %r13, %r13

// Store
lea addresses_D+0x21, %rcx
nop
nop
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
nop
and %r13, %r13

// Store
lea addresses_normal+0xe9a1, %r12
clflush (%r12)
nop
nop
xor %rbx, %rbx
movw $0x5152, (%r12)
nop
nop
nop
and $372, %rcx

// Faulty Load
lea addresses_normal+0xe9a1, %rsi
and %r14, %r14
movb (%rsi), %r13b
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'52': 53}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
