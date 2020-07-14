.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x329c, %rsi
lea addresses_WT_ht+0x95c, %rdi
nop
nop
nop
and %rax, %rax
mov $83, %rcx
rep movsl
nop
nop
nop
xor $64997, %r14
lea addresses_WT_ht+0x635c, %rsi
nop
nop
nop
nop
cmp $28543, %r11
mov (%rsi), %cx
nop
nop
inc %r11
lea addresses_D_ht+0x835c, %rax
sub %rbp, %rbp
movw $0x6162, (%rax)
nop
cmp %rax, %rax
lea addresses_UC_ht+0xb478, %rsi
lea addresses_WT_ht+0x1acdc, %rdi
clflush (%rsi)
nop
nop
nop
add $23714, %r14
mov $76, %rcx
rep movsb
nop
nop
xor $15093, %r11
lea addresses_A_ht+0xbd38, %rsi
lea addresses_WC_ht+0xfe1c, %rdi
add $59697, %r14
mov $55, %rcx
rep movsw
nop
nop
nop
nop
nop
and $43565, %rsi
lea addresses_WT_ht+0x1e4e3, %rax
nop
nop
nop
nop
cmp $58053, %rbp
movl $0x61626364, (%rax)
nop
nop
xor $20304, %rcx
lea addresses_UC_ht+0x1c75c, %rcx
nop
nop
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, (%rcx)
nop
nop
nop
cmp %rax, %rax
lea addresses_D_ht+0x1d85c, %rsi
lea addresses_WT_ht+0x975c, %rdi
clflush (%rdi)
nop
nop
add %rbx, %rbx
mov $56, %rcx
rep movsl
nop
and $10030, %rsi
lea addresses_WC_ht+0x3aa0, %rbx
clflush (%rbx)
sub $57268, %rbp
movb (%rbx), %r11b
xor %rax, %rax
lea addresses_normal_ht+0xb74c, %r11
nop
nop
nop
add $14204, %r14
mov $0x6162636465666768, %rax
movq %rax, (%r11)
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x1c75c, %rsi
lea addresses_WT_ht+0x12bfc, %rdi
clflush (%rdi)
nop
nop
dec %rax
mov $35, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_D_ht+0xea3c, %rsi
lea addresses_UC_ht+0xa75c, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $93, %rcx
rep movsb
nop
nop
nop
sub $34828, %r11
lea addresses_UC_ht+0x1675c, %r11
clflush (%r11)
nop
xor %rbp, %rbp
movl $0x61626364, (%r11)
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x75c, %r11
nop
nop
nop
nop
nop
and $29289, %rsi
movb (%r11), %bl
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r8
push %rax
push %rdi

// Store
lea addresses_WC+0x16dec, %r14
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %r15
movq %r15, %xmm7
vmovups %ymm7, (%r14)
nop
nop
nop
xor %r8, %r8

// Store
lea addresses_normal+0xeabc, %rdi
cmp $53194, %rax
mov $0x5152535455565758, %r14
movq %r14, %xmm3
movaps %xmm3, (%rdi)
nop
nop
nop
nop
nop
sub $4760, %rdi

// Store
lea addresses_WC+0xc35c, %r14
nop
nop
xor %rdi, %rdi
movb $0x51, (%r14)
nop
nop
nop
add $1963, %r8

// Store
lea addresses_normal+0x2f5c, %r14
add %rax, %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movups %xmm4, (%r14)
cmp $9354, %r10

// Load
mov $0x7029480000000b50, %r11
nop
nop
cmp %rdi, %rdi
mov (%r11), %ax
nop
and %r10, %r10

// Store
lea addresses_RW+0x5a74, %rax
nop
cmp %r14, %r14
movb $0x51, (%rax)
nop
nop
nop
nop
nop
add %rax, %rax

// Store
mov $0x5c5f00000000f5c, %r8
nop
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %rdi
movq %rdi, (%r8)
sub %r8, %r8

// Store
lea addresses_US+0x19e4c, %r14
clflush (%r14)
add $26965, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm5
movups %xmm5, (%r14)

// Exception!!!
nop
mov (0), %r10
nop
nop
nop
sub %r10, %r10

// Store
mov $0x45c, %rax
nop
nop
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm3
movups %xmm3, (%rax)
nop
nop
nop
nop
nop
dec %rdi

// Faulty Load
mov $0x5c5f00000000f5c, %r15
nop
and $1571, %r11
movups (%r15), %xmm3
vpextrq $0, %xmm3, %r10
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': True, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'58': 1}
58
*/
