.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xf0f3, %rsi
lea addresses_D_ht+0x6209, %rdi
nop
nop
nop
nop
and $19677, %r11
mov $97, %rcx
rep movsb
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0xeb1a, %rsi
lea addresses_WT_ht+0xcb49, %rdi
nop
and $175, %rbx
mov $113, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rcx
lea addresses_A_ht+0xa3fd, %r9
nop
nop
add $2082, %r8
mov (%r9), %bx
nop
nop
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0x1c975, %rsi
lea addresses_D_ht+0x77d9, %rdi
nop
nop
dec %rbp
mov $34, %rcx
rep movsl
nop
dec %r8
lea addresses_WC_ht+0x2009, %rsi
lea addresses_UC_ht+0x9209, %rdi
nop
nop
nop
nop
nop
add $62083, %r8
mov $86, %rcx
rep movsb
nop
nop
nop
and $49364, %rbx
lea addresses_A_ht+0x1e909, %rdi
nop
nop
add $20769, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
nop
nop
dec %rbp
lea addresses_WC_ht+0x7989, %rdi
nop
nop
nop
nop
xor %r11, %r11
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_normal_ht+0xed2b, %r9
nop
nop
xor %rbx, %rbx
movl $0x61626364, (%r9)
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_normal_ht+0x1c809, %rsi
lea addresses_UC_ht+0x689, %rdi
add %r11, %r11
mov $14, %rcx
rep movsb
nop
nop
inc %rbp
lea addresses_WT_ht+0xb609, %rsi
lea addresses_normal_ht+0x8009, %rdi
nop
nop
nop
and $19214, %rbp
mov $83, %rcx
rep movsq
nop
cmp %r11, %r11
lea addresses_WC_ht+0x16ba9, %rdi
nop
nop
xor %rbx, %rbx
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
nop
add %rsi, %rsi
lea addresses_D_ht+0x16409, %rsi
nop
cmp $56538, %r11
mov $0x6162636465666768, %r9
movq %r9, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
nop
nop
add $24840, %rbx
lea addresses_WC_ht+0x19809, %rsi
lea addresses_WC_ht+0x1c1e9, %rdi
nop
add $51551, %r11
mov $52, %rcx
rep movsl
nop
nop
xor %r8, %r8
lea addresses_WT_ht+0x1a909, %r8
nop
sub %r9, %r9
mov (%r8), %rbp
nop
nop
nop
nop
cmp $57029, %rsi
lea addresses_A_ht+0x10ca9, %r11
nop
nop
cmp $58223, %rsi
movb (%r11), %r9b
and $22281, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x14169, %r8
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r8)
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_RW+0xbc09, %rdi
inc %rdx
movl $0x51525354, (%rdi)
dec %rsi

// Store
lea addresses_US+0x3409, %r11
nop
sub $8910, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, (%r11)
nop
nop
nop
nop
cmp $58087, %rbp

// Store
mov $0x18ad9300000002c9, %rsi
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
nop
cmp $5172, %rdx

// Store
lea addresses_RW+0x17d58, %r11
add %rdi, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, (%r11)
nop
nop
nop
nop
dec %rcx

// Faulty Load
lea addresses_A+0x16c09, %r8
nop
nop
xor $18344, %r11
movb (%r8), %dl
lea oracles, %r8
and $0xff, %rdx
shlq $12, %rdx
mov (%r8,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'same': True, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'54': 1269}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
