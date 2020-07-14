.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x3254, %rsi
lea addresses_WC_ht+0x17f8c, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %r14, %r14
mov $38, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $64914, %r8
lea addresses_D_ht+0xda94, %r11
nop
sub %r14, %r14
mov $0x6162636465666768, %rsi
movq %rsi, (%r11)
nop
nop
nop
add $57305, %r11
lea addresses_UC_ht+0xe214, %rcx
nop
nop
nop
nop
nop
sub $57261, %rbx
movb (%rcx), %r11b
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_D_ht+0x1df4c, %rsi
clflush (%rsi)
nop
nop
nop
nop
sub $191, %r11
mov (%rsi), %rbx
nop
nop
xor $60336, %rcx
lea addresses_UC_ht+0x19f24, %rsi
lea addresses_WC_ht+0x12dae, %rdi
clflush (%rsi)
nop
nop
and $7388, %rbx
mov $10, %rcx
rep movsb
nop
nop
dec %r14
lea addresses_WT_ht+0x17b94, %rbx
cmp %r11, %r11
movups (%rbx), %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x1d394, %rcx
nop
nop
nop
nop
xor $20142, %r14
mov $0x6162636465666768, %r8
movq %r8, (%rcx)
nop
nop
nop
add $29864, %rcx
lea addresses_WC_ht+0x1ad94, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor %r11, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%rdi)
nop
nop
xor $28565, %rsi
lea addresses_UC_ht+0x1948a, %r8
nop
nop
dec %r14
mov (%r8), %rcx
nop
nop
and $30787, %rcx
lea addresses_WC_ht+0x1345c, %rcx
nop
dec %rsi
vmovups (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbx
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x4294, %rsi
nop
nop
nop
nop
dec %r11
movb (%rsi), %r14b
nop
nop
nop
nop
nop
sub $60194, %rsi
lea addresses_A_ht+0x13094, %rsi
nop
nop
cmp %r8, %r8
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm0
vpextrq $0, %xmm0, %rbx
nop
nop
nop
nop
nop
add $4574, %rcx
lea addresses_UC_ht+0x1864c, %rsi
nop
nop
nop
nop
nop
add %r8, %r8
mov $0x6162636465666768, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
nop
sub $21429, %rbx
lea addresses_normal_ht+0x1489a, %rsi
nop
nop
cmp $31503, %rcx
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
xor $15115, %rbx
lea addresses_D_ht+0xb6ec, %rbx
clflush (%rbx)
nop
and %rdi, %rdi
movups (%rbx), %xmm0
vpextrq $0, %xmm0, %r8
nop
nop
nop
nop
xor $42236, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_WC+0xe6a4, %rdx
nop
nop
nop
nop
nop
xor $23306, %r13
vmovups (%rdx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r12
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_PSE+0x1cff2, %rsi
xor %r11, %r11
mov $0x5152535455565758, %rdx
movq %rdx, (%rsi)
nop
nop
add $27149, %r11

// Load
lea addresses_WC+0x18b74, %rsi
nop
nop
nop
nop
nop
inc %r14
mov (%rsi), %r8
cmp $25730, %r8

// REPMOV
lea addresses_WT+0x12a94, %rsi
lea addresses_PSE+0x14d94, %rdi
nop
nop
dec %r11
mov $96, %rcx
rep movsb
nop
nop
xor $798, %rdi

// Store
lea addresses_PSE+0x4d94, %r14
clflush (%r14)
nop
nop
nop
nop
sub %rdx, %rdx
movw $0x5152, (%r14)
nop
nop
nop
inc %rdx

// REPMOV
lea addresses_D+0x18f94, %rsi
lea addresses_PSE+0x15614, %rdi
clflush (%rdi)
add %r14, %r14
mov $28, %rcx
rep movsq
nop
sub $59768, %rsi

// Store
mov $0x794, %r13
nop
add $9105, %rdi
movb $0x51, (%r13)
nop
inc %r11

// Faulty Load
lea addresses_D+0x18f94, %r14
inc %r12
vmovups (%r14), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdx
lea oracles, %r8
and $0xff, %rdx
shlq $12, %rdx
mov (%r8,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_PSE', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'36': 86}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
