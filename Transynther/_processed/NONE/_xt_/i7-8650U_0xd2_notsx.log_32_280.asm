.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x15dd5, %rdi
nop
nop
nop
nop
nop
inc %rcx
mov (%rdi), %bx
nop
nop
nop
nop
nop
xor $22819, %rax
lea addresses_WT_ht+0xf305, %rsi
lea addresses_UC_ht+0x1c02d, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $17704, %r9
mov $126, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $7949, %rbx
lea addresses_normal_ht+0xf07f, %rcx
nop
xor $38224, %r9
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
nop
add $7547, %rsi
lea addresses_WC_ht+0x1458d, %rsi
nop
nop
nop
nop
xor %r10, %r10
mov (%rsi), %cx
nop
nop
nop
nop
nop
add $51579, %r10
lea addresses_normal_ht+0xbc2d, %rsi
lea addresses_normal_ht+0x3265, %rdi
nop
nop
and %r11, %r11
mov $1, %rcx
rep movsl
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x442d, %rcx
clflush (%rcx)
nop
cmp $2596, %rsi
movb $0x61, (%rcx)
nop
nop
sub $47192, %r11
lea addresses_WT_ht+0x1102d, %r9
clflush (%r9)
nop
nop
nop
nop
add %r10, %r10
movb (%r9), %r11b
nop
nop
add $31150, %r10
lea addresses_WC_ht+0x42d, %rsi
lea addresses_UC_ht+0x11c2d, %rdi
nop
xor $23367, %r9
mov $41, %rcx
rep movsl
nop
add $13193, %rax
lea addresses_normal_ht+0xd5f7, %rax
nop
dec %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm7
vmovups %ymm7, (%rax)
nop
and $57902, %r10
lea addresses_WT_ht+0xbc6d, %rax
clflush (%rax)
nop
nop
xor %r11, %r11
mov (%rax), %r10d
and $59005, %r10
lea addresses_normal_ht+0xd82d, %rsi
lea addresses_A_ht+0x742d, %rdi
nop
nop
nop
nop
nop
and %r11, %r11
mov $91, %rcx
rep movsb
and %rcx, %rcx
lea addresses_UC_ht+0x8c2d, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov (%rdi), %r11w
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Load
lea addresses_US+0xa62d, %r9
nop
nop
nop
and $50135, %rdi
movb (%r9), %cl
and $12337, %rdi

// Store
lea addresses_WT+0x171ad, %rcx
nop
nop
nop
cmp $51442, %rax
movw $0x5152, (%rcx)
nop
nop
nop
nop
sub %rcx, %rcx

// Faulty Load
lea addresses_D+0x1a42d, %rax
and $49077, %rdi
mov (%rax), %r9
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'36': 32}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
