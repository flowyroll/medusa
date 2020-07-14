.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x2a3f, %rsi
lea addresses_UC_ht+0x15fbf, %rdi
nop
nop
sub $7401, %r8
mov $34, %rcx
rep movsb
nop
nop
xor $15252, %rdx
lea addresses_WT_ht+0x16fbf, %rsi
lea addresses_WC_ht+0xa73f, %rdi
nop
nop
nop
nop
sub $43127, %r11
mov $31, %rcx
rep movsl
nop
nop
xor $52011, %r11
lea addresses_WC_ht+0x115bf, %r11
nop
nop
inc %r15
movl $0x61626364, (%r11)
nop
xor %r15, %r15
lea addresses_UC_ht+0xf81b, %r8
nop
nop
nop
nop
nop
cmp $4841, %r15
mov (%r8), %ecx
nop
inc %rdi
lea addresses_D_ht+0x1de0f, %rsi
nop
nop
nop
and %r8, %r8
movb $0x61, (%rsi)
nop
nop
xor %rdx, %rdx
lea addresses_UC_ht+0x6d3f, %rdi
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%rdi)
nop
xor $63092, %rdi
lea addresses_A_ht+0x19437, %rsi
lea addresses_A_ht+0x1437f, %rdi
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $64, %rcx
rep movsq
nop
nop
nop
nop
nop
and $29722, %rsi
lea addresses_A_ht+0x1687f, %rsi
lea addresses_A_ht+0xf38c, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r8, %r8
mov $30, %rcx
rep movsw
nop
nop
cmp %r8, %r8
lea addresses_WT_ht+0xe937, %rsi
lea addresses_UC_ht+0x145bf, %rdi
clflush (%rsi)
and %r15, %r15
mov $113, %rcx
rep movsb
nop
nop
nop
add $7202, %r11
lea addresses_D_ht+0x1902f, %rsi
nop
nop
dec %r8
and $0xffffffffffffffc0, %rsi
movaps (%rsi), %xmm3
vpextrq $1, %xmm3, %rcx
add $59441, %r11
lea addresses_WT_ht+0x1beff, %rsi
lea addresses_UC_ht+0xcfbf, %rdi
nop
nop
xor $13753, %rdx
mov $83, %rcx
rep movsq
nop
nop
cmp %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x1e875, %r12
nop
sub $32364, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r12)
nop
nop
dec %rdi

// Load
lea addresses_PSE+0x2545, %r11
nop
nop
sub %rcx, %rcx
mov (%r11), %rdi
xor $9381, %rdi

// Store
lea addresses_US+0x1182b, %r12
nop
nop
xor %rsi, %rsi
movl $0x51525354, (%r12)
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_PSE+0x1e54b, %rax
nop
nop
nop
nop
dec %rcx
mov $0x5152535455565758, %r12
movq %r12, (%rax)
nop
nop
nop
nop
add $51684, %r11

// Store
lea addresses_UC+0x111cf, %rdi
clflush (%rdi)
nop
nop
nop
sub $41252, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%rdi)
nop
nop
nop
nop
nop
dec %rax

// Store
lea addresses_D+0x1ffbf, %r8
nop
nop
xor $60231, %rdi
movb $0x51, (%r8)
nop
nop
nop
nop
sub $18888, %rdi

// Faulty Load
lea addresses_D+0x1ffbf, %rsi
nop
nop
nop
nop
cmp $61689, %rdi
movntdqa (%rsi), %xmm2
vpextrq $1, %xmm2, %r11
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'35': 1, '08': 8, '46': 15, '3c': 1, '45': 14789, '00': 6831, 'ed': 1, '49': 177, 'f1': 1, 'ff': 3, '25': 2}
00 35 45 45 45 45 45 00 00 45 45 45 00 00 45 45 00 00 45 45 00 45 45 45 00 45 00 45 45 45 45 00 45 00 45 00 00 45 45 45 45 45 45 00 45 45 45 00 45 45 45 00 45 45 45 45 45 00 00 45 45 45 00 00 00 00 45 45 45 45 00 00 45 45 45 45 00 45 45 45 00 45 00 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 00 00 45 45 00 45 45 00 45 00 00 45 00 45 00 45 45 45 00 00 45 45 00 00 45 45 45 45 45 45 45 00 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 00 00 45 45 00 45 45 45 45 45 00 00 45 45 45 45 00 00 00 45 00 45 45 00 45 49 00 45 00 45 45 45 00 45 45 00 45 45 00 00 00 00 45 45 45 49 00 00 45 00 45 45 45 00 45 45 45 45 45 00 00 45 45 45 00 45 00 45 45 00 00 45 45 45 45 45 00 00 00 00 00 45 45 00 45 45 45 00 45 00 45 45 00 00 45 45 45 45 00 45 45 00 45 45 00 00 00 00 00 45 00 00 45 45 00 45 45 45 00 00 00 45 45 00 45 00 00 45 45 49 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 00 00 45 45 45 49 45 00 00 45 00 45 45 45 45 45 00 45 45 00 45 45 45 45 00 45 00 00 00 45 45 00 45 45 45 45 45 45 00 00 45 45 45 45 45 00 45 00 45 45 45 45 00 45 00 45 45 00 45 45 45 45 00 45 45 45 45 45 49 00 45 45 45 00 45 45 45 00 45 00 00 00 45 45 00 00 00 45 45 00 45 45 00 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 45 45 00 45 45 45 45 45 45 00 00 45 00 45 45 45 45 00 00 45 45 45 00 00 45 45 45 00 45 00 45 45 45 00 00 45 00 45 45 00 45 45 00 45 00 45 00 45 45 45 00 45 45 45 45 45 45 00 00 45 45 45 45 45 00 45 45 00 45 45 45 00 45 45 45 00 45 00 45 45 45 45 00 45 45 45 45 45 45 00 45 00 00 00 00 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 00 45 00 00 00 00 45 45 45 00 45 00 00 45 45 45 00 45 45 00 00 00 00 45 45 00 45 45 00 00 00 45 45 45 45 45 00 00 00 45 45 45 00 00 45 45 00 00 45 00 45 45 45 45 45 45 00 00 45 00 00 00 45 45 45 45 45 49 45 45 00 00 45 45 45 45 00 45 00 45 45 45 45 45 00 00 00 45 00 45 45 45 00 45 00 00 45 00 45 45 45 00 45 45 45 45 00 45 45 00 45 45 45 00 45 45 00 00 00 00 00 45 45 45 45 45 00 00 00 45 49 45 45 45 00 45 45 00 45 45 45 45 00 45 45 00 45 45 00 00 00 45 45 45 49 45 00 00 45 45 00 45 00 45 45 45 45 00 00 45 45 00 00 45 45 45 00 00 00 00 45 45 00 45 00 45 00 45 00 45 45 00 45 00 45 00 45 45 45 00 00 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 00 45 45 00 00 00 45 00 45 45 45 45 45 49 00 45 45 45 45 00 45 00 00 00 45 00 45 45 45 45 00 45 45 45 45 45 45 00 00 00 45 45 45 45 45 45 45 45 00 00 00 45 45 00 45 45 45 45 00 45 45 45 45 00 00 45 45 00 45 00 45 45 00 45 00 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 00 45 45 00 00 45 45 45 45 00 45 45 45 00 45 45 45 45 00 45 45 45 00 45 45 00 45 00 45 45 45 00 45 45 00 45 45 45 00 00 45 45 45 00 45 45 00 00 00 45 45 45 00 00 00 45 00 45 45 45 00 45 45 00 00 45 45 45 00 45 45 00 45 00 00 00 00 45 00 00 45 45 45 45 45 00 00 45 45 00 00 00 45 45 45 45 00 45 00 00 45 45 45 45 45 45 45 45 00 00 45 00 45 00 45 45 45 00 00 45 45 45 00 00 45 45 00 45 45 00 45 45 00 00 45 45 00 45 00 49 45 00 00 45 45 00 45 00 45 00 00
*/
