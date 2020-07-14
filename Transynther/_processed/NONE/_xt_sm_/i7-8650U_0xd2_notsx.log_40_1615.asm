.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xde00, %rsi
nop
nop
nop
nop
xor $38172, %r14
mov $0x6162636465666768, %r8
movq %r8, %xmm6
and $0xffffffffffffffc0, %rsi
vmovaps %ymm6, (%rsi)
cmp %rcx, %rcx
lea addresses_normal_ht+0x18e00, %rsi
lea addresses_A_ht+0x1de00, %rdi
sub $61091, %r11
mov $8, %rcx
rep movsb
nop
nop
and $52428, %r8
lea addresses_D_ht+0xd200, %rsi
lea addresses_WT_ht+0x16080, %rdi
clflush (%rsi)
nop
nop
and %rbp, %rbp
mov $105, %rcx
rep movsb
nop
nop
inc %r8
lea addresses_D_ht+0x7c9c, %rsi
lea addresses_UC_ht+0x9582, %rdi
nop
nop
dec %rbp
mov $100, %rcx
rep movsw
nop
add %r8, %r8
lea addresses_WC_ht+0x2600, %rsi
lea addresses_D_ht+0x14200, %rdi
nop
nop
nop
nop
add %r14, %r14
mov $49, %rcx
rep movsq
dec %rsi
lea addresses_UC_ht+0x106a0, %rcx
nop
nop
nop
nop
add $2069, %r14
movw $0x6162, (%rcx)
nop
nop
nop
nop
cmp $37515, %r11
lea addresses_A_ht+0x1440c, %rdi
nop
nop
add $49768, %r14
movb (%rdi), %r11b
nop
nop
nop
nop
add $18808, %r8
lea addresses_normal_ht+0x5886, %rdi
xor $29895, %r8
movl $0x61626364, (%rdi)
add $55611, %r11
lea addresses_WT_ht+0x17600, %rsi
lea addresses_A_ht+0x16b80, %rdi
nop
nop
nop
xor %r14, %r14
mov $77, %rcx
rep movsq
nop
nop
nop
nop
nop
add $11705, %r14
lea addresses_D_ht+0x152e0, %rsi
lea addresses_D_ht+0x19cbc, %rdi
and $48127, %r8
mov $127, %rcx
rep movsl
nop
nop
inc %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %rax
push %rbx
push %rdi
push %rsi

// Store
lea addresses_RW+0x15ae0, %rdi
add $46971, %rbx
mov $0x5152535455565758, %r15
movq %r15, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
nop
nop
dec %r15

// Store
lea addresses_PSE+0xee00, %r11
nop
nop
sub $29363, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm3
movups %xmm3, (%r11)
nop
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_PSE+0xee00, %r11
nop
nop
nop
nop
add %rax, %rax
movw $0x5152, (%r11)
nop
nop
nop
add %rsi, %rsi

// Faulty Load
lea addresses_PSE+0xee00, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
and %r15, %r15
mov (%rsi), %r12w
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': True}}
{'52': 40}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
