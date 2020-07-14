.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x6447, %rsi
lea addresses_normal_ht+0x13f55, %rdi
nop
nop
nop
nop
and $5106, %rbp
mov $87, %rcx
rep movsw
nop
nop
inc %r9
lea addresses_D_ht+0x5e07, %rax
clflush (%rax)
nop
nop
nop
nop
cmp %r12, %r12
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
and $0xffffffffffffffc0, %rax
vmovntdq %ymm6, (%rax)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x1ed47, %rsi
xor $15036, %r9
movw $0x6162, (%rsi)
nop
dec %rcx
lea addresses_D_ht+0x10fcf, %rcx
clflush (%rcx)
nop
nop
add %rax, %rax
mov $0x6162636465666768, %r12
movq %r12, (%rcx)
dec %rdi
lea addresses_D_ht+0x1c407, %rsi
nop
add %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm4, (%rsi)
cmp %rcx, %rcx
lea addresses_D_ht+0x199f7, %rdi
nop
nop
nop
nop
and $3428, %r12
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r9
add $16375, %r9
lea addresses_A_ht+0xdfc7, %r12
clflush (%r12)
nop
nop
nop
nop
cmp $12507, %rdi
mov (%r12), %bp
add %rsi, %rsi
lea addresses_WC_ht+0x13907, %rdi
nop
nop
sub %r9, %r9
vmovups (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
nop
nop
inc %rax
lea addresses_UC_ht+0xac87, %rcx
nop
nop
nop
inc %r12
mov (%rcx), %r9
add $10028, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x1c07, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
and $52759, %r12
movb $0x51, (%rcx)
nop
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_UC+0x4a67, %r12
nop
nop
nop
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %rbp
movq %rbp, (%r12)
cmp $59207, %rax

// Store
lea addresses_WC+0x17967, %rcx
add %r15, %r15
movb $0x51, (%rcx)
nop
nop
nop
nop
cmp %rdi, %rdi

// REPMOV
lea addresses_normal+0x5007, %rsi
mov $0x807, %rdi
nop
cmp %r12, %r12
mov $23, %rcx
rep movsq
nop
nop
nop
inc %rsi

// Faulty Load
mov $0x53ae800000000807, %r12
add $11958, %rsi
movb (%r12), %al
lea oracles, %r15
and $0xff, %rax
shlq $12, %rax
mov (%r15,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_normal', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_P', 'congruent': 11, 'same': False}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'90': 3563, '34': 15263, '00': 3003}
00 90 34 90 90 00 34 34 34 34 90 00 90 90 90 00 90 00 00 90 90 90 00 90 90 00 00 90 00 90 34 34 00 34 34 34 34 00 34 34 34 90 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 90 90 90 90 90 00 90 34 34 34 00 34 34 34 34 34 34 00 34 34 34 34 34 90 90 90 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 90 00 34 34 90 00 34 34 34 00 34 34 34 34 00 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 90 34 34 00 34 34 34 34 34 34 90 34 34 00 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 90 34 34 90 90 00 90 90 00 90 00 34 34 90 00 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 90 00 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 90 90 00 90 00 90 90 90 00 90 90 90 34 90 90 90 00 90 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 90 00 90 90 90 90 90 90 34 90 00 90 90 90 90 90 90 34 34 34 34 34 34 00 00 34 34 34 34 34 34 00 34 34 34 34 90 00 34 00 90 00 90 90 90 90 34 34 34 34 34 00 90 00 90 00 90 00 90 90 34 34 90 90 90 90 90 90 90 90 00 00 34 34 34 34 00 34 34 90 00 34 34 34 34 34 34 34 34 90 90 00 90 90 00 34 00 90 90 00 90 34 90 34 34 34 34 00 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 00 34 00 00 34 34 34 34 00 34 00 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 90 00 90 90 90 00 00 00 90 00 90 90 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 90 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 00 34 34 00 90 90 90 00 90 90 34 00 90 90 90 34 34 34 34 34 34 34 34 90 90 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 90 90 34 90 34 34 90 00 00 34 34 34 34 34 34 34 34 34 00 34 34 00 34 34 34 34 90 00 90 00 00 90 34 90 00 34 90 90 90 90 90 90 00 90 90 90 00 90 00 90 00 90 00 90 00 90 90 90 90 34 34 34 34 34 00 90 90 34 90 90 00 34 34 34 34 34 34 34 90 34 34 34 34 34 90 90 90 90 00 90 00 90 00 90 90 00 00 90 90 34 34 34 34 90 90 00 90 00 90 90 90 00 90 90 90 90 90 00 00 90 90 00 90 00 90 90 00 34 34 34 34 34 34 34 00 00 00 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 90 34 34 34 34 34 00 00 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 90 90 90 90 90 90 00 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 00 34 34 34 34 00 34 34 00 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 00 90 90 00 90 90 90 90 90 00 90 00 90 90 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 00 90 90 00 90 90 00 90 90 00 90 34 90 00 00 90 90 34 00 00 34 34 34 90 90 00 00 90 90 90 00 90 00 90 00 90 90 90 00 00 34 34 34 34 90 90 90 90 00 90
*/
