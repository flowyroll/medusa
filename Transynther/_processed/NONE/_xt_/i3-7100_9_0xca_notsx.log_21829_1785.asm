.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x10616, %r14
nop
sub %rdx, %rdx
mov $0x6162636465666768, %r11
movq %r11, %xmm2
movups %xmm2, (%r14)
nop
nop
sub $24709, %rbp
lea addresses_A_ht+0x1cb62, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $11042, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
add %r11, %r11
lea addresses_normal_ht+0xbf22, %r11
nop
sub $46916, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
and $0xffffffffffffffc0, %r11
movaps %xmm5, (%r11)
inc %rdi
lea addresses_WT_ht+0x1b462, %r8
nop
nop
nop
cmp $46682, %rcx
mov (%r8), %r11d
add $57988, %rdi
lea addresses_UC_ht+0x3d62, %rsi
lea addresses_UC_ht+0x8062, %rdi
nop
nop
nop
nop
add $25445, %r11
mov $117, %rcx
rep movsb
nop
nop
cmp %r8, %r8
lea addresses_A_ht+0x7562, %rsi
lea addresses_WT_ht+0x1bc92, %rdi
cmp %r14, %r14
mov $70, %rcx
rep movsw
nop
nop
nop
inc %rbp
lea addresses_WT_ht+0x13d62, %rsi
lea addresses_WT_ht+0x12ee2, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %r14, %r14
mov $120, %rcx
rep movsw
nop
cmp $58582, %r14
lea addresses_UC_ht+0xfcf6, %rsi
lea addresses_A_ht+0x39fe, %rdi
and $42060, %rdx
mov $45, %rcx
rep movsw
nop
nop
dec %rdi
lea addresses_WT_ht+0x2e2, %r8
nop
sub %r14, %r14
movb $0x61, (%r8)
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x1ecc2, %r11
add %rdx, %rdx
mov (%r11), %di
nop
nop
add $21319, %r11
lea addresses_normal_ht+0x11de2, %rdi
nop
nop
nop
sub %rsi, %rsi
movw $0x6162, (%rdi)
nop
nop
add $14731, %r14
lea addresses_normal_ht+0x10f62, %rcx
nop
nop
and $36777, %rdx
movb (%rcx), %r14b
xor $18762, %rbp
lea addresses_WT_ht+0x4682, %r14
nop
nop
nop
nop
nop
add %rdi, %rdi
mov (%r14), %rsi
cmp %rcx, %rcx
lea addresses_normal_ht+0x9ee2, %rsi
lea addresses_UC_ht+0x105e2, %rdi
nop
nop
nop
and %r14, %r14
mov $55, %rcx
rep movsl
cmp $58667, %rsi
lea addresses_WT_ht+0x5656, %rcx
nop
nop
dec %rbp
mov $0x6162636465666768, %r14
movq %r14, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
sub $61568, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r8
push %r9
push %rcx

// Store
lea addresses_RW+0x1a1f4, %r11
nop
nop
add $12695, %r8
movw $0x5152, (%r11)
nop
nop
nop
dec %r12

// Store
lea addresses_RW+0xaa42, %rcx
nop
nop
nop
nop
inc %r10
movw $0x5152, (%rcx)

// Exception!!!
nop
nop
nop
mov (0), %r12
nop
nop
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_D+0xe8ee, %r12
nop
nop
nop
nop
add $4308, %r9
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
cmp $50405, %r8

// Faulty Load
lea addresses_D+0x18562, %r11
nop
and %rcx, %rcx
movups (%r11), %xmm6
vpextrq $0, %xmm6, %r9
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 2, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True}}
{'src': {'same': True, 'congruent': 8, 'NT': True, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
