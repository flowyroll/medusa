.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x16be5, %rcx
nop
nop
sub $44841, %r14
mov (%rcx), %r8w
sub $47925, %r15
lea addresses_WC_ht+0x10be5, %rsi
lea addresses_WT_ht+0x9be5, %rdi
nop
nop
nop
nop
and $35204, %r11
mov $47, %rcx
rep movsw
nop
add $14066, %rdi
lea addresses_UC_ht+0x133e5, %rdi
nop
nop
nop
sub $5333, %r15
movl $0x61626364, (%rdi)
nop
add %rcx, %rcx
lea addresses_A_ht+0x11f75, %rsi
lea addresses_UC_ht+0x9e8d, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $2794, %r15
mov $16, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_A_ht+0x56b5, %rsi
lea addresses_WC_ht+0x10be5, %rdi
nop
nop
nop
nop
nop
sub %r13, %r13
mov $78, %rcx
rep movsq
nop
and $58114, %rdi
lea addresses_D_ht+0x2365, %rsi
lea addresses_A_ht+0x3e5, %rdi
clflush (%rdi)
cmp %r8, %r8
mov $90, %rcx
rep movsq
nop
nop
cmp %r15, %r15
lea addresses_WC_ht+0x6fe5, %r11
nop
cmp %rcx, %rcx
movw $0x6162, (%r11)
nop
sub %r13, %r13
lea addresses_normal_ht+0xcbe5, %r14
nop
nop
xor $51348, %rcx
movups (%r14), %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
nop
nop
nop
dec %r11
lea addresses_WC_ht+0x12be5, %rcx
nop
nop
nop
nop
nop
add %r11, %r11
movl $0x61626364, (%rcx)
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x1009, %rdi
nop
nop
nop
add %r11, %r11
mov (%rdi), %r13
nop
nop
nop
and %r11, %r11
lea addresses_WT_ht+0x10be5, %rcx
clflush (%rcx)
nop
sub $63899, %r14
mov (%rcx), %r8w
nop
nop
xor $42411, %r14
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_A+0x15477, %r15
nop
nop
xor %rcx, %rcx
movl $0x51525354, (%r15)
nop
nop
add %r15, %r15

// Load
lea addresses_normal+0x1d285, %r15
nop
nop
nop
nop
add $41005, %r12
movb (%r15), %dl
nop
nop
xor $54082, %rdx

// Store
lea addresses_UC+0x1ce5, %rdx
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm6
movaps %xmm6, (%rdx)
nop
nop
nop
nop
nop
dec %rbp

// Load
lea addresses_PSE+0x18be5, %r10
clflush (%r10)
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov (%r10), %ecx
nop
sub $54343, %r12

// Faulty Load
lea addresses_PSE+0x18be5, %r10
nop
nop
nop
nop
inc %rcx
mov (%r10), %r15w
lea oracles, %r10
and $0xff, %r15
shlq $12, %r15
mov (%r10,%r15,1), %r15
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'33': 32}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
