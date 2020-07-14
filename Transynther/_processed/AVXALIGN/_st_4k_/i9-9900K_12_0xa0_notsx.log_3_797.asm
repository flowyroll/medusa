.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1cbc8, %rsi
lea addresses_UC_ht+0x11688, %rdi
nop
nop
nop
nop
nop
sub $13785, %r8
mov $34, %rcx
rep movsb
and %rbx, %rbx
lea addresses_A_ht+0x108, %r14
nop
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
and $6816, %rbx
lea addresses_WT_ht+0x179a0, %r8
nop
nop
nop
nop
inc %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r8)
nop
nop
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0x8e08, %rcx
nop
nop
nop
cmp $53327, %rbp
mov (%rcx), %r8w
nop
nop
nop
inc %r14
lea addresses_WC_ht+0x18908, %rsi
lea addresses_UC_ht+0x12b82, %rdi
nop
and %r11, %r11
mov $112, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $18138, %rsi
lea addresses_UC_ht+0x16f08, %rsi
nop
nop
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
and $0xffffffffffffffc0, %rsi
vmovaps %ymm4, (%rsi)
nop
nop
cmp $30868, %rbp
lea addresses_D_ht+0x1c8a8, %rbx
clflush (%rbx)
nop
nop
nop
nop
add %rsi, %rsi
mov (%rbx), %r14d
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x6308, %rsi
lea addresses_WT_ht+0x12510, %rdi
nop
nop
nop
nop
nop
and $58039, %rbx
mov $100, %rcx
rep movsw
nop
nop
nop
mfence
lea addresses_UC_ht+0xac88, %r14
nop
nop
cmp %rcx, %rcx
movl $0x61626364, (%r14)
nop
nop
and $7239, %rsi
lea addresses_normal_ht+0x16cc8, %rsi
lea addresses_normal_ht+0x9788, %rdi
and $4211, %rbp
mov $18, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $47003, %rcx
lea addresses_A_ht+0x12e0c, %rsi
lea addresses_D_ht+0x1d40, %rdi
nop
nop
nop
nop
nop
cmp $27238, %r14
mov $5, %rcx
rep movsw
nop
nop
sub %r8, %r8
lea addresses_D_ht+0x2702, %rdi
nop
nop
nop
nop
nop
and $21152, %r11
and $0xffffffffffffffc0, %rdi
movntdqa (%rdi), %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
nop
nop
inc %rbp
lea addresses_UC_ht+0x1b708, %rcx
clflush (%rcx)
add $38713, %r11
mov (%rcx), %rbp
nop
nop
inc %r8
lea addresses_D_ht+0x6668, %r14
nop
nop
inc %r8
mov $0x6162636465666768, %rbx
movq %rbx, (%r14)
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_normal_ht+0x6488, %rcx
nop
sub %r14, %r14
mov (%rcx), %di
nop
nop
nop
nop
add $43480, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %rax
push %rbx
push %rsi

// Store
lea addresses_RW+0x4b08, %r10
nop
nop
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm5
movups %xmm5, (%r10)
sub $23578, %r10

// Store
lea addresses_RW+0x1e908, %r10
nop
nop
add %rsi, %rsi
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
sub $57022, %rax

// Store
lea addresses_RW+0x1f658, %r11
nop
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %r10
movq %r10, (%r11)

// Exception!!!
nop
nop
nop
nop
mov (0), %rax
add $60320, %rsi

// Load
mov $0x38, %rax
nop
nop
nop
nop
cmp $33357, %rbx
mov (%rax), %r10
inc %rsi

// Store
lea addresses_WC+0x15a0, %r10
nop
nop
nop
nop
and $43258, %rax
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movntdq %xmm3, (%r10)
nop
sub %r10, %r10

// Load
lea addresses_UC+0x7988, %r13
add $28024, %r11
movups (%r13), %xmm5
vpextrq $1, %xmm5, %rsi
cmp %r10, %r10

// Store
lea addresses_UC+0x15b8, %r11
nop
nop
nop
nop
nop
sub $9716, %r13
mov $0x5152535455565758, %r14
movq %r14, (%r11)
dec %r10

// Store
lea addresses_D+0x14508, %r14
nop
nop
add %r13, %r13
movb $0x51, (%r14)
nop
nop
xor $58016, %rsi

// Store
lea addresses_UC+0xed08, %rax
nop
nop
nop
inc %rbx
mov $0x5152535455565758, %r10
movq %r10, (%rax)
inc %r13

// Store
mov $0x108, %r10
nop
nop
nop
nop
nop
cmp $7913, %r11
movb $0x51, (%r10)
nop
xor %rsi, %rsi

// Store
lea addresses_WT+0xb908, %rax
nop
nop
nop
nop
nop
and %r10, %r10
movl $0x51525354, (%rax)
nop
inc %r10

// Faulty Load
lea addresses_A+0x3108, %r10
nop
nop
nop
and $32719, %r13
mov (%r10), %rsi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'51': 3}
51 51 51
*/
