.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x150b5, %r8
nop
nop
dec %rax
movb (%r8), %cl
and $20073, %rbp
lea addresses_WT_ht+0x1a972, %rsi
lea addresses_WC_ht+0x7655, %rdi
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $75, %rcx
rep movsq
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x19c55, %rdi
nop
nop
nop
nop
and $31172, %rbx
movb $0x61, (%rdi)
nop
and $16367, %rax
lea addresses_WT_ht+0x10655, %rsi
lea addresses_WT_ht+0x1d455, %rdi
nop
nop
xor $17133, %r15
mov $68, %rcx
rep movsb
nop
cmp %r15, %r15
lea addresses_normal_ht+0x15655, %rdi
clflush (%rdi)
nop
nop
add $32440, %rcx
movb $0x61, (%rdi)
nop
xor %rbp, %rbp
lea addresses_WT_ht+0xac3d, %r15
nop
nop
nop
nop
and $40719, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%r15)
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0x7155, %rax
nop
nop
nop
nop
xor %rsi, %rsi
mov (%rax), %bp
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x6655, %rbx
nop
nop
nop
nop
xor %rcx, %rcx
movb (%rbx), %r8b
nop
nop
sub $1443, %rax
lea addresses_WC_ht+0x1119d, %rbp
and %r15, %r15
movl $0x61626364, (%rbp)
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x1214d, %rsi
lea addresses_WC_ht+0x17f0d, %rdi
nop
nop
nop
dec %r15
mov $37, %rcx
rep movsb
nop
nop
nop
cmp %r15, %r15
lea addresses_WT_ht+0x14a35, %r15
nop
add $21585, %rcx
mov (%r15), %r8d
nop
and $8312, %rcx
lea addresses_A_ht+0x10ed5, %rbp
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov (%rbp), %rsi
mfence
lea addresses_UC_ht+0x11edd, %rsi
lea addresses_WC_ht+0x7d5, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $36651, %rax
mov $89, %rcx
rep movsl
nop
nop
xor %rbp, %rbp
lea addresses_D_ht+0xaa55, %r8
and $46919, %r15
mov (%r8), %bp
nop
nop
nop
nop
xor %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %r9
push %rcx
push %rdi
push %rdx

// Store
lea addresses_RW+0x9855, %r11
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm3
vmovups %ymm3, (%r11)
nop
nop
cmp %r9, %r9

// Store
lea addresses_PSE+0x19655, %r8
xor %rdx, %rdx
movw $0x5152, (%r8)

// Exception!!!
nop
mov (0), %rdx
nop
xor $64143, %rdi

// Store
lea addresses_WC+0x7f95, %r11
nop
nop
nop
nop
nop
cmp $54156, %r10
movl $0x51525354, (%r11)
nop
nop
nop
nop
add $42538, %r11

// Faulty Load
lea addresses_RW+0x9e55, %rdx
nop
nop
sub %rcx, %rcx
mov (%rdx), %r11w
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 4, 'NT': True, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'32': 50}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
