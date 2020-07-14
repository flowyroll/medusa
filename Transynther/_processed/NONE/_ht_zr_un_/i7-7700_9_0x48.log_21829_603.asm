.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x15fe9, %r11
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov (%r11), %rsi
and $4012, %r10
lea addresses_D_ht+0x1e0a8, %rsi
lea addresses_UC_ht+0x11f09, %rdi
nop
nop
nop
nop
cmp %r8, %r8
mov $92, %rcx
rep movsl
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x9ae9, %rdx
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%rdx)
nop
nop
nop
nop
nop
sub $29692, %r8
lea addresses_D_ht+0x1d169, %r11
clflush (%r11)
nop
sub %rdi, %rdi
mov (%r11), %r10w
nop
nop
and $31250, %rdx
lea addresses_WC_ht+0x18be9, %rsi
lea addresses_WC_ht+0xf849, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %rbx
mov $56, %rcx
rep movsw
cmp %rsi, %rsi
lea addresses_UC_ht+0x369, %rbx
add $12482, %r10
movw $0x6162, (%rbx)
nop
nop
nop
nop
nop
dec %r8
lea addresses_A_ht+0x1095, %rsi
clflush (%rsi)
nop
dec %r8
mov (%rsi), %ecx
nop
nop
nop
nop
and $6360, %rdx
lea addresses_UC_ht+0x1d3e9, %rsi
lea addresses_A_ht+0x170c9, %rdi
nop
nop
nop
dec %rbx
mov $4, %rcx
rep movsb
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0x82e9, %rdx
nop
nop
nop
nop
nop
xor %r8, %r8
movups (%rdx), %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x2be9, %rsi
nop
and $22223, %r10
mov $0x6162636465666768, %r8
movq %r8, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
and $29832, %r10
lea addresses_WT_ht+0x5c41, %rsi
lea addresses_A_ht+0x1be9, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub $62446, %r8
mov $91, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $25815, %rdi
lea addresses_WC_ht+0x1cd69, %rsi
lea addresses_UC_ht+0x12b39, %rdi
cmp %r11, %r11
mov $74, %rcx
rep movsq
sub $26203, %r8
lea addresses_A_ht+0x183e9, %rdi
nop
nop
nop
and $18481, %rbx
movb (%rdi), %r11b
nop
nop
nop
nop
nop
xor $29192, %rcx
lea addresses_WT_ht+0xead9, %rdx
nop
nop
nop
nop
sub $61022, %r8
mov (%rdx), %esi
nop
nop
nop
nop
and $8829, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rsi

// Store
lea addresses_WT+0x1bbe9, %rcx
nop
nop
add %rax, %rax
movl $0x51525354, (%rcx)
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_A+0x1da69, %r14
sub $39041, %r11
movl $0x51525354, (%r14)
nop
nop
cmp $12386, %rcx

// Store
lea addresses_US+0x12bc9, %rbx
nop
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movntdq %xmm7, (%rbx)
nop
nop
nop
add %r14, %r14

// Store
lea addresses_US+0x34d9, %r14
dec %rax
movl $0x51525354, (%r14)
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_normal+0xd69d, %rax
nop
nop
nop
nop
nop
sub $58200, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
movups %xmm4, (%rax)
nop
nop
nop
nop
nop
cmp $10301, %rax

// Store
lea addresses_US+0x115e9, %r11
nop
xor $54588, %r14
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movups %xmm0, (%r11)
nop
nop
nop
sub %rax, %rax

// Faulty Load
lea addresses_WT+0x1bbe9, %rbx
nop
add $59867, %r15
movups (%rbx), %xmm6
vpextrq $1, %xmm6, %r14
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'48': 577, '00': 5793, '49': 1616, '6c': 1, '46': 13805, '25': 37}
00 6c 46 46 46 25 25 46 46 25 25 25 25 46 25 25 25 25 25 25 25 46 25 46 25 25 25 25 25 25 25 46 25 25 25 25 25 25 25 25 46 25 25 46 25 25 25 25 25 25 49 49 49 49 49 49 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 46 46 46 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 46 49 49 46 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 48 48 48 48 48 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 00 00 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 48 46 48 48 48 48 46 46 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 46 48 48 48 46 48 48 46 46 48 48 48 48 48 48 46 46 48 48 48 48 48 46 48 48 48 46 48 48 48 48 48 46 48 48 48 48 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 48 48 48 48 48 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 00 00 00 00 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 46 00 00 00 00 46 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 49
*/
