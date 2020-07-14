.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x3827, %rdx
clflush (%rdx)
nop
nop
nop
nop
inc %rbp
mov (%rdx), %rsi
cmp $56540, %r11
lea addresses_normal_ht+0x1b159, %rbp
nop
nop
add %rax, %rax
mov (%rbp), %r11w
nop
add %r11, %r11
lea addresses_A_ht+0x1831b, %rsi
lea addresses_UC_ht+0x145f9, %rdi
nop
nop
nop
nop
xor %r10, %r10
mov $70, %rcx
rep movsb
and $29624, %r11
lea addresses_WT_ht+0x10fed, %rdx
nop
nop
nop
nop
cmp $20992, %rdi
mov $0x6162636465666768, %r11
movq %r11, (%rdx)
nop
nop
nop
nop
nop
cmp $65290, %r10
lea addresses_UC_ht+0x14d59, %rdi
nop
nop
cmp $8195, %r10
mov (%rdi), %rbp
nop
nop
nop
nop
nop
sub %rax, %rax
lea addresses_A_ht+0xe19, %rsi
nop
nop
xor %rcx, %rcx
mov (%rsi), %rdi
nop
cmp %r10, %r10
lea addresses_A_ht+0x13159, %rsi
lea addresses_WC_ht+0x1a99, %rdi
nop
nop
nop
nop
and %rbp, %rbp
mov $36, %rcx
rep movsl
nop
nop
nop
nop
xor $25673, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x2559, %rcx
nop
nop
sub $36591, %r15
movw $0x5152, (%rcx)
nop
and %rdi, %rdi

// REPMOV
lea addresses_UC+0x19d39, %rsi
lea addresses_D+0x11559, %rdi
clflush (%rsi)
nop
nop
nop
nop
inc %rax
mov $119, %rcx
rep movsl
xor %rbx, %rbx

// Store
lea addresses_PSE+0x3dc9, %rbx
nop
and $1996, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rbx)
nop
nop
dec %r11

// Load
lea addresses_WC+0x1259, %rax
nop
nop
nop
nop
and %rsi, %rsi
mov (%rax), %rdi
nop
nop
and $9353, %r15

// Faulty Load
lea addresses_PSE+0x2559, %rcx
nop
nop
add %rax, %rax
vmovntdqa (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r8
lea oracles, %r15
and $0xff, %r8
shlq $12, %r8
mov (%r15,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'45': 357, '00': 5}
45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45
*/
