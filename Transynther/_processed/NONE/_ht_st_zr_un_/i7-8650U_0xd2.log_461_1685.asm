.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x61f9, %rsi
lea addresses_WC_ht+0x5259, %rdi
nop
nop
nop
nop
nop
dec %rdx
mov $76, %rcx
rep movsw
nop
nop
nop
xor $28348, %rax
lea addresses_WC_ht+0x15939, %r12
clflush (%r12)
nop
nop
dec %r11
mov (%r12), %rsi
cmp $42258, %rcx
lea addresses_A_ht+0x19bf9, %rax
nop
and %rdi, %rdi
mov (%rax), %r11w
nop
add $55923, %rsi
lea addresses_normal_ht+0x18579, %rsi
lea addresses_A_ht+0x179f9, %rdi
clflush (%rsi)
and $2460, %r12
mov $59, %rcx
rep movsl
nop
nop
nop
nop
add %r11, %r11
lea addresses_normal_ht+0x1b5f9, %r12
clflush (%r12)
nop
nop
nop
add %rdx, %rdx
movb $0x61, (%r12)
and %rcx, %rcx
lea addresses_D_ht+0x6cf9, %r12
nop
nop
nop
nop
nop
cmp %rdx, %rdx
movups (%r12), %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
nop
cmp %rax, %rax
lea addresses_WC_ht+0x2ca1, %rax
nop
nop
nop
nop
nop
add $49759, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm5
vmovups %ymm5, (%rax)
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x1589f, %r11
inc %rdx
movups (%r11), %xmm7
vpextrq $1, %xmm7, %rax
nop
nop
nop
nop
nop
cmp %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_WC+0x35f9, %rdx
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rdx)
nop
add $53453, %rdx

// Store
mov $0xf9, %r12
clflush (%r12)
nop
nop
nop
nop
sub $4239, %r11
movl $0x51525354, (%r12)
nop
add %rbx, %rbx

// Store
lea addresses_RW+0x130b9, %rsi
clflush (%rsi)
add %r12, %r12
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
inc %r11

// Store
lea addresses_normal+0x16a79, %rsi
nop
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, (%rsi)
add %r12, %r12

// Store
lea addresses_WC+0x1eaf9, %rsi
nop
nop
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
movups %xmm4, (%rsi)
nop
nop
nop
nop
nop
add $44182, %r12

// Store
lea addresses_WT+0x12a5d, %rbp
nop
nop
sub $47427, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%rbp)
nop
sub %rdx, %rdx

// Faulty Load
lea addresses_WT+0x3df9, %r12
nop
xor $37271, %r11
mov (%r12), %rsi
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'00': 331, 'ff': 112, '48': 7, '44': 7, '52': 2, 'dc': 2}
00 ff 00 00 ff 00 ff ff 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 ff ff ff 00 00 00 00 00 ff 00 00 ff 00 00 00 ff 00 ff 00 00 00 00 00 00 00 00 00 ff ff 00 00 00 00 00 ff 00 00 00 00 00 00 ff 00 00 ff 00 00 00 00 00 00 00 ff 00 ff 00 00 00 00 00 00 00 00 ff ff 00 00 00 48 00 48 00 00 ff 44 ff 00 ff ff 00 ff ff 00 ff 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 ff 00 00 00 ff 00 00 ff 00 ff 00 00 00 ff 00 00 ff 00 ff ff 00 00 00 00 00 ff 00 00 00 ff 00 00 48 00 ff 00 00 ff 00 00 00 00 00 00 00 44 00 00 ff 48 00 00 ff 00 00 00 00 00 48 00 00 00 00 52 00 44 00 00 00 ff 00 ff ff 00 ff 00 ff 00 00 00 00 ff 00 00 00 ff ff 00 ff 00 00 00 ff ff ff 00 00 00 00 00 00 ff 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 ff 00 00 ff ff 00 ff ff 00 00 00 00 00 00 52 00 dc 00 00 ff 00 00 00 ff ff 00 ff ff 00 ff 00 00 ff 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 44 00 ff dc ff 00 ff 00 00 00 ff 00 00 44 ff ff ff ff 00 00 00 00 00 00 00 ff 00 00 00 ff 00 ff 00 00 00 00 00 ff ff 00 44 00 ff 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 ff 00 00 00 00 ff 00 ff 00 00 00 00 00 ff 00 00 00 00 ff ff 00 00 ff 00 00 00 00 ff 00 00 ff 00 00 00 00 00 48 00 ff 00 00 00 ff ff 00 00 00 ff 00 00 00 00 00 00 00 00 48 00 00 00 00 ff 00 ff 00 00 ff 00 00 ff 00 44 ff 00 ff 00 00 00 00 00 00 00 ff 00 00 00 00 ff 00 00 00 00 00 ff 00 ff 00 ff 00 ff 00 00
*/
