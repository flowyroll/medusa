.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x9065, %rsi
lea addresses_WT_ht+0x1b759, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $64, %rcx
rep movsw
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x3665, %rsi
lea addresses_WT_ht+0x9be5, %rdi
clflush (%rsi)
sub $49598, %r8
mov $112, %rcx
rep movsb
nop
nop
and $13409, %rdi
lea addresses_normal_ht+0x6c65, %rdi
clflush (%rdi)
nop
xor %rcx, %rcx
movups (%rdi), %xmm6
vpextrq $1, %xmm6, %r13
nop
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x4785, %rdx
nop
nop
nop
nop
xor $8655, %r13
mov (%rdx), %r8w
nop
nop
nop
add %rdx, %rdx
lea addresses_D_ht+0x1d865, %r8
nop
nop
nop
xor $60823, %r9
movb (%r8), %cl
nop
dec %rcx
lea addresses_WC_ht+0x1bf65, %rdx
nop
nop
nop
nop
nop
dec %rsi
movl $0x61626364, (%rdx)
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x11281, %rcx
nop
nop
nop
xor $17073, %r13
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0x16c65, %rsi
lea addresses_D_ht+0x18fdf, %rdi
nop
nop
and %rdx, %rdx
mov $77, %rcx
rep movsb
dec %rcx
lea addresses_WT_ht+0x1ec65, %r13
nop
nop
nop
nop
nop
xor $38481, %r8
movw $0x6162, (%r13)
xor $59618, %r13
lea addresses_D_ht+0x6065, %rcx
nop
nop
dec %r9
mov (%rcx), %rsi
add %r9, %r9
lea addresses_D_ht+0x1e865, %r8
nop
nop
nop
nop
dec %r9
and $0xffffffffffffffc0, %r8
movntdqa (%r8), %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
add %r9, %r9
lea addresses_D_ht+0xee5, %rsi
lea addresses_A_ht+0x429d, %rdi
clflush (%rdi)
add $13525, %r10
mov $31, %rcx
rep movsb
nop
xor %rcx, %rcx
lea addresses_D_ht+0x168e5, %r13
clflush (%r13)
sub $43066, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm6
movups %xmm6, (%r13)
nop
nop
cmp %r10, %r10
lea addresses_WC_ht+0x83b5, %rsi
lea addresses_WC_ht+0x1b3e5, %rdi
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov $80, %rcx
rep movsw
nop
xor $53310, %r8
lea addresses_A_ht+0x1b465, %r8
nop
nop
nop
nop
nop
add $60681, %r13
movups (%r8), %xmm5
vpextrq $0, %xmm5, %r10
sub $12762, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x19065, %r11
nop
nop
nop
nop
add $51021, %rbp
movb $0x51, (%r11)
dec %rbp

// Load
lea addresses_normal+0xf8c1, %rbp
nop
cmp %r13, %r13
mov (%rbp), %r11d
nop
nop
and %rax, %rax

// Load
lea addresses_PSE+0xa065, %rbp
nop
and %r8, %r8
mov (%rbp), %r11w
nop
nop
nop
nop
and %r15, %r15

// REPMOV
lea addresses_PSE+0x1f065, %rsi
lea addresses_PSE+0x13445, %rdi
nop
nop
nop
nop
add $8424, %r13
mov $102, %rcx
rep movsw
nop
nop
add %r11, %r11

// Store
lea addresses_WT+0x107d5, %rcx
nop
nop
nop
mfence
movb $0x51, (%rcx)
nop
nop
nop
nop
add $39150, %rdi

// Store
lea addresses_normal+0x187d1, %r11
xor $20461, %r8
movb $0x51, (%r11)
nop
nop
nop
nop
inc %rcx

// Store
lea addresses_WC+0x11815, %r11
nop
nop
nop
nop
nop
sub %r13, %r13
movw $0x5152, (%r11)
sub $39567, %r8

// Store
lea addresses_PSE+0x8e65, %rsi
dec %r15
movl $0x51525354, (%rsi)
add %r8, %r8

// Faulty Load
lea addresses_D+0x2865, %r11
nop
nop
nop
nop
cmp $19768, %rax
movb (%r11), %r13b
lea oracles, %r8
and $0xff, %r13
shlq $12, %r13
mov (%r8,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'same': True, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
