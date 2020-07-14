.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x10436, %r12
clflush (%r12)
nop
nop
nop
dec %rbp
mov (%r12), %r11w
nop
nop
nop
sub $31055, %r10
lea addresses_WC_ht+0x6a38, %rdi
nop
nop
nop
nop
and $38355, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm6
movups %xmm6, (%rdi)
nop
nop
cmp $48921, %r10
lea addresses_UC_ht+0x1edb8, %r15
nop
nop
xor $63855, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
xor $15559, %rdi
lea addresses_WT_ht+0x15fb8, %rbp
nop
nop
add $41781, %r10
movw $0x6162, (%rbp)
cmp $25042, %r15
lea addresses_UC_ht+0x11b8, %r10
nop
nop
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%r10)
nop
nop
nop
and $22270, %r15
lea addresses_D_ht+0x14438, %r11
nop
nop
add $53896, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm1
and $0xffffffffffffffc0, %r11
vmovaps %ymm1, (%r11)
nop
nop
nop
nop
inc %r10
lea addresses_WC_ht+0x8db8, %rsi
lea addresses_WC_ht+0x47b8, %rdi
clflush (%rsi)
nop
nop
add %r12, %r12
mov $21, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0x18508, %rcx
sub $44468, %r12
mov (%rcx), %di
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0xafdc, %rcx
nop
nop
nop
nop
nop
sub $63486, %r10
mov $0x6162636465666768, %r11
movq %r11, %xmm4
vmovups %ymm4, (%rcx)
nop
cmp $43097, %r10
lea addresses_A_ht+0xb7b8, %r10
clflush (%r10)
nop
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%r10)
nop
nop
nop
nop
nop
dec %rbp
lea addresses_WC_ht+0x11080, %rbp
dec %r15
movl $0x61626364, (%rbp)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x124e8, %rsi
lea addresses_A_ht+0x9c68, %rdi
nop
nop
nop
nop
xor %r15, %r15
mov $24, %rcx
rep movsb
nop
nop
inc %r10
lea addresses_UC_ht+0x160b8, %r11
nop
nop
nop
nop
xor %r15, %r15
mov (%r11), %r10w
nop
nop
nop
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x103b8, %rcx
nop
nop
nop
nop
add %r10, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
movups %xmm5, (%rcx)
nop
nop
nop
nop
sub %r12, %r12

// REPMOV
lea addresses_WC+0x1f420, %rsi
lea addresses_WC+0x1f5f8, %rdi
nop
nop
nop
sub %r9, %r9
mov $122, %rcx
rep movsq
inc %rdi

// Load
lea addresses_WC+0x1a138, %r9
nop
inc %r10
movb (%r9), %cl
nop
nop
nop
nop
nop
cmp %r12, %r12

// Store
lea addresses_D+0x1d558, %r9
sub %r12, %r12
mov $0x5152535455565758, %rdi
movq %rdi, (%r9)
nop
nop
nop
nop
nop
sub $21892, %r10

// Faulty Load
lea addresses_US+0x14fb8, %r10
nop
nop
xor %rbx, %rbx
movups (%r10), %xmm2
vpextrq $0, %xmm2, %rdi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'00': 137}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
