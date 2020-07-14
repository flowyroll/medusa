.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xe99a, %rbx
nop
nop
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %rdx
movq %rdx, (%rbx)
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WC_ht+0xf51a, %r8
nop
nop
nop
mfence
mov (%r8), %rax
nop
nop
add %rax, %rax
lea addresses_normal_ht+0x1319a, %rsi
lea addresses_WC_ht+0x111a, %rdi
nop
nop
nop
cmp %rdx, %rdx
mov $56, %rcx
rep movsw
nop
and %r8, %r8
lea addresses_UC_ht+0x3582, %rsi
lea addresses_D_ht+0xda5e, %rdi
nop
nop
nop
inc %r13
mov $105, %rcx
rep movsq
nop
nop
nop
nop
inc %rbx
lea addresses_UC_ht+0x119a, %r8
nop
nop
nop
nop
nop
cmp %rdx, %rdx
movb $0x61, (%r8)
nop
nop
nop
nop
xor $9106, %rbx
lea addresses_A_ht+0x869a, %rsi
lea addresses_WC_ht+0xfc5a, %rdi
nop
sub $1275, %rdx
mov $49, %rcx
rep movsq
cmp %r13, %r13
lea addresses_UC_ht+0xa23a, %rcx
clflush (%rcx)
cmp $762, %rax
mov (%rcx), %rdi
nop
add $57007, %rbx
lea addresses_WT_ht+0x1809a, %rdi
nop
and %rdx, %rdx
mov $0x6162636465666768, %rbx
movq %rbx, (%rdi)
nop
nop
nop
nop
cmp $38264, %r13
lea addresses_normal_ht+0x1471a, %r8
inc %r13
mov (%r8), %ecx
nop
nop
nop
dec %rax
lea addresses_WC_ht+0x2d9a, %rsi
lea addresses_normal_ht+0x1b8da, %rdi
nop
sub $10409, %r13
mov $25, %rcx
rep movsb
nop
nop
nop
xor %r8, %r8
lea addresses_WC_ht+0xd59a, %rsi
lea addresses_UC_ht+0x1843a, %rdi
nop
nop
xor %rax, %rax
mov $122, %rcx
rep movsw
sub %rdi, %rdi
lea addresses_UC_ht+0x13b3a, %r13
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, (%r13)
nop
nop
nop
sub %rdx, %rdx
lea addresses_D_ht+0x5a1a, %rsi
lea addresses_normal_ht+0x7d9a, %rdi
nop
nop
nop
dec %rax
mov $53, %rcx
rep movsl
nop
nop
nop
and %rax, %rax
lea addresses_WC_ht+0x1c11a, %rbx
nop
nop
nop
nop
nop
xor %rdx, %rdx
movb $0x61, (%rbx)
and %r13, %r13
lea addresses_WT_ht+0x1575e, %rsi
lea addresses_WT_ht+0x1e9da, %rdi
nop
inc %rdx
mov $50, %rcx
rep movsw
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rbx
push %rdx

// Store
lea addresses_RW+0xd59a, %r8
clflush (%r8)
nop
nop
nop
nop
sub $10136, %r11
mov $0x5152535455565758, %r12
movq %r12, (%r8)
nop
nop
nop
cmp $12096, %r8

// Store
lea addresses_D+0x1783a, %r11
nop
nop
nop
nop
cmp $55056, %rbx
movb $0x51, (%r11)
nop
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_normal+0x1209a, %rbx
nop
nop
nop
xor $52162, %r10
movw $0x5152, (%rbx)
nop
nop
and %r9, %r9

// Store
lea addresses_D+0x10aaa, %rdx
xor %r12, %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%rdx)
sub $29647, %r12

// Store
lea addresses_RW+0x1b19a, %r10
nop
nop
nop
dec %r8
movb $0x51, (%r10)
nop
nop
dec %r8

// Store
lea addresses_D+0xb19a, %r8
nop
nop
sub $20278, %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
vmovntdq %ymm3, (%r8)
sub %r10, %r10

// Store
lea addresses_D+0x19a, %r8
nop
nop
nop
xor $56678, %r11
movw $0x5152, (%r8)
nop
and %rdx, %rdx

// Load
lea addresses_A+0xa6da, %rbx
nop
nop
nop
nop
and $36178, %rdx
vmovups (%rbx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r12
nop
nop
nop
nop
add $29898, %r9

// Store
lea addresses_normal+0x729a, %r11
clflush (%r11)
nop
nop
nop
nop
cmp $42256, %r8
movw $0x5152, (%r11)
nop
nop
nop
add %r11, %r11

// Faulty Load
lea addresses_D+0xb19a, %rdx
nop
nop
nop
nop
nop
add $24493, %r8
vmovaps (%rdx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r9
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rdx
pop %rbx
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'52': 78, '00': 109}
52 00 00 52 00 52 00 52 00 00 52 52 00 00 00 00 52 52 52 00 00 00 52 00 00 52 00 52 00 00 00 00 00 52 00 00 52 00 52 00 52 52 52 00 00 52 00 00 00 52 00 52 52 52 52 52 00 00 52 00 52 00 52 00 00 52 00 52 00 00 00 00 00 00 52 52 00 00 00 52 00 52 52 52 00 00 00 00 52 00 00 00 00 52 52 00 00 00 52 00 52 00 52 00 52 00 00 00 52 00 00 00 00 00 00 00 00 00 52 00 00 52 00 00 52 52 00 00 00 52 52 00 52 00 00 00 00 52 52 00 52 00 52 52 00 00 00 00 00 00 00 00 52 52 52 00 00 52 52 52 52 52 52 00 52 00 00 52 00 52 00 52 52 52 00 52 00 00 00 52 52 52 00 52 52 00 52
*/
