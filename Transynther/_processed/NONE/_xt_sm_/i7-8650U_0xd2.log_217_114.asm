.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1c009, %rsi
lea addresses_UC_ht+0xfd23, %rdi
nop
nop
nop
nop
cmp $31819, %r15
mov $64, %rcx
rep movsq
nop
nop
nop
nop
sub $59350, %r11
lea addresses_D_ht+0xd469, %rcx
clflush (%rcx)
nop
nop
dec %r9
mov (%rcx), %r15d
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0xb2c9, %rcx
nop
dec %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0xbfc9, %rsi
nop
nop
nop
nop
nop
cmp $35111, %r11
mov (%rsi), %r8w
nop
and %r9, %r9
lea addresses_D_ht+0x17ea9, %rsi
lea addresses_WT_ht+0x1ce49, %rdi
nop
nop
dec %rbx
mov $22, %rcx
rep movsb
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0xfbc9, %rsi
lea addresses_WC_ht+0x9fc9, %rdi
nop
nop
sub %r9, %r9
mov $39, %rcx
rep movsq
nop
nop
nop
nop
sub $2985, %rsi
lea addresses_WT_ht+0x12fc9, %rsi
lea addresses_A_ht+0xa63, %rdi
nop
nop
nop
cmp $56575, %rbx
mov $1, %rcx
rep movsq
nop
nop
cmp %r8, %r8
lea addresses_UC_ht+0x1bfe9, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movb $0x61, (%rdi)
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x7bc9, %r11
nop
nop
nop
nop
sub %r8, %r8
mov (%r11), %r15d
nop
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0x8fc9, %r15
nop
nop
nop
nop
nop
add $47657, %rbx
mov (%r15), %r8
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x1b3b9, %r15
nop
nop
nop
and %rsi, %rsi
movb $0x61, (%r15)
nop
nop
nop
nop
and %r8, %r8
lea addresses_D_ht+0x4109, %rsi
lea addresses_A_ht+0x4ac9, %rdi
nop
nop
nop
nop
sub $64162, %rbx
mov $18, %rcx
rep movsw
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x14949, %rdi
nop
nop
nop
inc %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
and $0xffffffffffffffc0, %rdi
vmovntdq %ymm7, (%rdi)
nop
nop
nop
nop
nop
xor $18587, %r15
lea addresses_A_ht+0x79c9, %rsi
nop
add %rbx, %rbx
movw $0x6162, (%rsi)
nop
nop
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r8
push %rbp
push %rsi

// Store
lea addresses_D+0x157c9, %r10
clflush (%r10)
nop
nop
nop
nop
inc %r13
movw $0x5152, (%r10)
nop
nop
nop
inc %r10

// Store
lea addresses_US+0x142e1, %r8
nop
nop
nop
nop
nop
xor $701, %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm3
vmovups %ymm3, (%r8)
nop
nop
nop
nop
dec %rbp

// Store
mov $0x3c9, %r10
cmp $25323, %r12
mov $0x5152535455565758, %rsi
movq %rsi, (%r10)
nop
nop
nop
cmp $6836, %r13

// Faulty Load
lea addresses_D+0x157c9, %r10
nop
nop
nop
nop
add %rbp, %rbp
mov (%r10), %r12w
lea oracles, %r13
and $0xff, %r12
shlq $12, %r12
mov (%r13,%r12,1), %r12
pop %rsi
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'52': 217}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
