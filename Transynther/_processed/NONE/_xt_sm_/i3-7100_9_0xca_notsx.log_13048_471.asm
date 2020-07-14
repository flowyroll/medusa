.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x19634, %rsi
lea addresses_WC_ht+0x88, %rdi
nop
nop
nop
nop
nop
add $40333, %r13
mov $12, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r9
lea addresses_WT_ht+0x66c8, %rsi
lea addresses_WC_ht+0x15b78, %rdi
nop
nop
nop
nop
nop
add $40224, %rax
mov $60, %rcx
rep movsw
nop
nop
inc %rax
lea addresses_normal_ht+0x1abc8, %r9
nop
nop
add %r11, %r11
and $0xffffffffffffffc0, %r9
movntdqa (%r9), %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
nop
xor %r11, %r11
lea addresses_WT_ht+0xeec8, %rsi
lea addresses_A_ht+0x9dd8, %rdi
nop
nop
nop
nop
nop
sub $36974, %rbx
mov $112, %rcx
rep movsl
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0x7a40, %rsi
lea addresses_WT_ht+0x136f4, %rdi
nop
nop
nop
add $59556, %r9
mov $121, %rcx
rep movsb
cmp %rsi, %rsi
lea addresses_WT_ht+0x1e1a8, %rcx
cmp %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_normal_ht+0x1ec8, %rsi
lea addresses_UC_ht+0xbc48, %rdi
nop
cmp $11028, %r9
mov $12, %rcx
rep movsw
nop
nop
mfence
lea addresses_WT_ht+0x10ce1, %rcx
and $41682, %r9
mov $0x6162636465666768, %r13
movq %r13, (%rcx)
nop
nop
nop
nop
nop
inc %rax
lea addresses_UC_ht+0x96c8, %rax
nop
nop
nop
nop
nop
xor $34306, %rbx
movl $0x61626364, (%rax)
nop
add $12822, %rsi
lea addresses_UC_ht+0xfcc8, %rcx
nop
nop
nop
sub $29299, %rbx
movups (%rcx), %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
nop
nop
sub %r13, %r13
lea addresses_A_ht+0x6788, %rdi
nop
nop
cmp %rcx, %rcx
movb $0x61, (%rdi)
nop
nop
nop
nop
sub $41044, %r13
lea addresses_WT_ht+0x6568, %rsi
lea addresses_WT_ht+0x54c8, %rdi
nop
cmp $61510, %r11
mov $123, %rcx
rep movsq
and %r9, %r9
lea addresses_WC_ht+0x114e, %rdi
nop
nop
add $29563, %rbx
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %rcx
nop
and $21936, %rdi
lea addresses_D_ht+0x7ec8, %rsi
lea addresses_normal_ht+0x60c8, %rdi
clflush (%rdi)
nop
nop
nop
cmp $30251, %r9
mov $15, %rcx
rep movsb
nop
nop
nop
nop
sub %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_WC+0x1d2c8, %rdi
nop
nop
nop
nop
nop
xor $64757, %rbx
movups (%rdi), %xmm1
vpextrq $1, %xmm1, %rcx
nop
nop
nop
sub $47677, %rcx

// Store
lea addresses_UC+0x9f44, %rsi
add $39963, %rbp
movl $0x51525354, (%rsi)
nop
nop
add %rbp, %rbp

// Store
lea addresses_D+0x3ec8, %rbp
dec %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rbp)
nop
nop
nop
nop
inc %rax

// Store
lea addresses_normal+0x1c248, %rcx
nop
nop
nop
xor $15604, %rdi
movb $0x51, (%rcx)
nop
nop
nop
nop
cmp $42928, %rsi

// Store
lea addresses_RW+0x53a8, %rcx
nop
nop
xor $39632, %rdi
movl $0x51525354, (%rcx)
nop
nop
nop
nop
sub $17833, %rsi

// Store
lea addresses_RW+0x15468, %rcx
xor %rdi, %rdi
movl $0x51525354, (%rcx)
nop
nop
sub $22930, %r11

// Load
lea addresses_D+0x3ec8, %rax
nop
nop
nop
nop
xor %r11, %r11
movups (%rax), %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_WC+0x1cc28, %rax
nop
sub %rbx, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, (%rax)
sub %r11, %r11

// Store
lea addresses_UC+0xb2c8, %rbp
inc %rsi
movl $0x51525354, (%rbp)
nop
nop
nop
nop
add %rbx, %rbx

// Load
lea addresses_D+0x1840, %rbx
nop
sub %rcx, %rcx
movb (%rbx), %r11b
nop
nop
nop
nop
nop
sub $57043, %rax

// Faulty Load
lea addresses_D+0x3ec8, %rsi
nop
nop
and %r11, %r11
movb (%rsi), %cl
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': True}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'58': 13048}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
