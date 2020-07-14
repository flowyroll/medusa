.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xdda7, %r9
nop
nop
nop
nop
nop
inc %r13
mov (%r9), %rbx
nop
nop
and %r10, %r10
lea addresses_A_ht+0x125a7, %r13
inc %rcx
mov (%r13), %edi
nop
inc %rbx
lea addresses_normal_ht+0x1a9a7, %r13
nop
inc %rdi
movups (%r13), %xmm0
vpextrq $0, %xmm0, %rbx
nop
xor $11859, %rbx
lea addresses_WT_ht+0x5f9f, %r13
and %rsi, %rsi
mov $0x6162636465666768, %r9
movq %r9, (%r13)
nop
nop
nop
nop
nop
and $32791, %r10
lea addresses_WC_ht+0x1ea7, %r10
nop
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %rcx
movq %rcx, (%r10)
nop
nop
nop
nop
add %r10, %r10
lea addresses_WC_ht+0x57a7, %rbx
nop
nop
nop
nop
nop
dec %r9
mov $0x6162636465666768, %rdi
movq %rdi, (%rbx)
nop
nop
nop
inc %r9
lea addresses_WT_ht+0x135b4, %rdi
nop
nop
nop
nop
nop
add %r13, %r13
movl $0x61626364, (%rdi)
sub %rsi, %rsi
lea addresses_D_ht+0x1d607, %rbx
nop
cmp $30881, %rdi
mov $0x6162636465666768, %r9
movq %r9, (%rbx)
dec %rcx
lea addresses_D_ht+0x133a7, %rsi
lea addresses_UC_ht+0x1b26f, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $15736, %rbx
mov $18, %rcx
rep movsl
nop
nop
nop
cmp $55308, %rdi
lea addresses_A_ht+0x95a7, %rsi
lea addresses_A_ht+0x10047, %rdi
nop
nop
nop
inc %r10
mov $104, %rcx
rep movsw
nop
nop
nop
nop
add %r13, %r13
lea addresses_UC_ht+0x19dee, %r9
nop
nop
nop
nop
nop
add $37305, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x8bc1, %rsi
lea addresses_UC_ht+0x29bd, %rdi
nop
nop
nop
nop
xor $1700, %r12
mov $119, %rcx
rep movsw
nop
nop
nop
dec %r10
lea addresses_normal_ht+0x195a7, %rbx
nop
nop
nop
nop
inc %r9
movl $0x61626364, (%rbx)
nop
dec %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rsi

// Store
lea addresses_WC+0x71a7, %rbx
nop
nop
and $54591, %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovups %ymm1, (%rbx)
nop
nop
and %rcx, %rcx

// Load
lea addresses_RW+0x16c67, %rbx
nop
nop
xor %r8, %r8
movb (%rbx), %r14b
nop
nop
nop
nop
cmp $41479, %rcx

// Faulty Load
lea addresses_WC+0x71a7, %r14
clflush (%r14)
nop
nop
cmp $553, %rsi
movups (%r14), %xmm1
vpextrq $0, %xmm1, %r13
lea oracles, %r8
and $0xff, %r13
shlq $12, %r13
mov (%r8,%r13,1), %r13
pop %rsi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'58': 143}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
