.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xc29, %r8
nop
nop
cmp $18390, %r12
mov (%r8), %ebx
nop
nop
nop
nop
xor $20834, %rbp
lea addresses_normal_ht+0xfe29, %rax
xor %rbp, %rbp
mov (%rax), %r11w
nop
nop
nop
nop
add $30812, %rax
lea addresses_A_ht+0x185f9, %rsi
lea addresses_D_ht+0x17069, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r8
mov $63, %rcx
rep movsl
nop
cmp %r8, %r8
lea addresses_normal_ht+0x1e5b9, %rax
nop
nop
nop
and $60628, %rdi
movw $0x6162, (%rax)
lfence
lea addresses_WC_ht+0xe1f9, %rax
xor %rbx, %rbx
vmovups (%rax), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
nop
add %rsi, %rsi
lea addresses_WC_ht+0x6775, %rsi
lea addresses_WC_ht+0x9929, %rdi
nop
nop
nop
nop
nop
sub $22527, %r12
mov $36, %rcx
rep movsw
nop
nop
nop
inc %rbp
lea addresses_A_ht+0x15529, %rsi
lea addresses_normal_ht+0x12829, %rdi
cmp %r12, %r12
mov $45, %rcx
rep movsq
nop
dec %rdi
lea addresses_WC_ht+0xbfc9, %r12
nop
nop
nop
nop
inc %r11
mov $0x6162636465666768, %rbx
movq %rbx, (%r12)
nop
and $20657, %rdi
lea addresses_A_ht+0x6829, %r12
sub %rcx, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm6
vmovups %ymm6, (%r12)
nop
dec %rbp
lea addresses_normal_ht+0xb669, %rsi
nop
nop
add $64074, %r11
mov $0x6162636465666768, %r8
movq %r8, (%rsi)
nop
nop
nop
dec %r11
lea addresses_D_ht+0xf029, %rsi
lea addresses_WT_ht+0x1ade9, %rdi
nop
nop
nop
and %rbx, %rbx
mov $27, %rcx
rep movsb
xor %r12, %r12
lea addresses_UC_ht+0x1a2bf, %r8
clflush (%r8)
nop
nop
nop
nop
sub %rcx, %rcx
movw $0x6162, (%r8)
nop
nop
nop
nop
dec %r11
lea addresses_normal_ht+0xd255, %rsi
lea addresses_D_ht+0x3129, %rdi
nop
and %r12, %r12
mov $69, %rcx
rep movsb
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_RW+0x18829, %rsi
lea addresses_D+0x66dd, %rdi
nop
nop
add $11604, %rdx
mov $15, %rcx
rep movsq
nop
nop
nop
inc %rcx

// Store
lea addresses_PSE+0x5c79, %rdx
nop
add %rdi, %rdi
movl $0x51525354, (%rdx)
nop
nop
nop
and %r9, %r9

// Store
lea addresses_UC+0xe029, %rdi
add %rax, %rax
movb $0x51, (%rdi)
nop
nop
nop
nop
and $31580, %rdx

// Load
lea addresses_WC+0x1c029, %r9
and $39988, %rcx
mov (%r9), %r15d
nop
cmp $19994, %r15

// Store
lea addresses_D+0x12da9, %rcx
nop
nop
nop
nop
nop
sub $33623, %rdi
movw $0x5152, (%rcx)
nop
nop
cmp %r9, %r9

// Store
lea addresses_WC+0x3ee9, %rdi
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, (%rdi)
nop
nop
nop
dec %rdx

// Store
lea addresses_WC+0x5435, %r9
nop
nop
cmp $34116, %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r9)
inc %rax

// Store
lea addresses_A+0x5029, %rdx
nop
nop
nop
nop
nop
and $12539, %r15
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
cmp $54006, %rdi

// Store
lea addresses_UC+0x1d329, %rsi
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, (%rsi)
nop
nop
nop
dec %rax

// Load
lea addresses_WC+0x19129, %rdx
nop
sub $15434, %rsi
vmovaps (%rdx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rax
nop
nop
nop
nop
dec %r15

// Store
lea addresses_A+0x8829, %rax
nop
nop
cmp $51918, %rdi
movw $0x5152, (%rax)
nop
nop
nop
xor $20930, %rsi

// Store
mov $0x646720000000fa9, %r9
nop
nop
nop
nop
nop
and $15796, %rdi
movb $0x51, (%r9)
nop
nop
dec %r9

// Store
lea addresses_RW+0x18829, %rsi
nop
nop
nop
sub $40745, %rdx
movw $0x5152, (%rsi)
nop
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_RW+0x18829, %r15
nop
nop
nop
nop
xor %rsi, %rsi
vmovntdqa (%r15), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
lea oracles, %rdx
and $0xff, %rcx
shlq $12, %rcx
mov (%rdx,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_D', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'00': 280}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
