.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xac03, %rsi
nop
nop
nop
nop
nop
sub $5700, %rax
mov (%rsi), %r15
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x98dc, %r10
xor $6040, %rcx
movb (%r10), %bl
nop
nop
inc %r10
lea addresses_WT_ht+0xbc43, %r15
nop
nop
add %rdi, %rdi
movups (%r15), %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x2a03, %rsi
lea addresses_WT_ht+0x16632, %rdi
nop
nop
nop
nop
sub $17905, %rbp
mov $75, %rcx
rep movsw
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x9c03, %rsi
lea addresses_A_ht+0xbcb, %rdi
nop
nop
nop
nop
nop
add $191, %r15
mov $37, %rcx
rep movsb
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0xf403, %rsi
lea addresses_UC_ht+0x17703, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $72, %rcx
rep movsw
nop
nop
nop
add %rbx, %rbx
lea addresses_WT_ht+0xc003, %rsi
clflush (%rsi)
nop
cmp $26808, %rcx
movw $0x6162, (%rsi)
nop
nop
cmp %r15, %r15
lea addresses_D_ht+0x5383, %rbp
nop
xor $41907, %r15
mov (%rbp), %rsi
nop
nop
nop
nop
nop
xor $54990, %rax
lea addresses_D_ht+0xd4fb, %rsi
lea addresses_UC_ht+0x9aff, %rdi
nop
nop
sub $13870, %r15
mov $84, %rcx
rep movsw
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_UC_ht+0xd803, %rsi
lea addresses_normal_ht+0x1df73, %rdi
nop
nop
nop
xor %r15, %r15
mov $65, %rcx
rep movsq
nop
nop
nop
nop
xor $39839, %rcx
lea addresses_UC_ht+0x1eab, %rbx
nop
cmp $50182, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
movups %xmm7, (%rbx)
nop
nop
nop
and $18253, %r15
lea addresses_A_ht+0x1597d, %rdi
nop
nop
nop
nop
nop
sub $5441, %rbp
movups (%rdi), %xmm0
vpextrq $0, %xmm0, %rax
dec %r15
lea addresses_normal_ht+0x1856d, %rsi
lea addresses_D_ht+0x106f3, %rdi
nop
nop
nop
nop
nop
add $13738, %r15
mov $44, %rcx
rep movsl
cmp %rbx, %rbx
lea addresses_A_ht+0x17a03, %rsi
lea addresses_WT_ht+0x18803, %rdi
nop
nop
nop
nop
dec %r15
mov $119, %rcx
rep movsw
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %r9
push %rcx
push %rsi

// Store
lea addresses_PSE+0x15a3, %rcx
add $65067, %r8
movb $0x51, (%rcx)
nop
cmp $7828, %r11

// Store
lea addresses_normal+0x627e, %r10
clflush (%r10)
nop
cmp %rsi, %rsi
movb $0x51, (%r10)
nop
nop
nop
nop
cmp $7484, %r8

// Load
mov $0x2b9cb70000000d3d, %rcx
nop
nop
nop
nop
nop
sub %r9, %r9
vmovaps (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
nop
xor %rcx, %rcx

// Load
lea addresses_RW+0x2343, %rcx
nop
nop
nop
nop
nop
add $39896, %rsi
mov (%rcx), %r8d
nop
nop
dec %r10

// Faulty Load
lea addresses_WT+0x1c403, %r10
nop
dec %rsi
mov (%r10), %rcx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'39': 88}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
