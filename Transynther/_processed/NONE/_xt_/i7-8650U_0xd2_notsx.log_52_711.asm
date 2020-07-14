.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1cf58, %rdi
nop
nop
nop
sub %rsi, %rsi
mov (%rdi), %r11w
xor $14595, %r12
lea addresses_WT_ht+0x3858, %rax
nop
dec %rdx
movl $0x61626364, (%rax)
xor %r12, %r12
lea addresses_A_ht+0x178a6, %rsi
lea addresses_WT_ht+0x1c2e8, %rdi
nop
sub $27235, %rdx
mov $82, %rcx
rep movsq
nop
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0x12038, %rsi
lea addresses_A_ht+0xc558, %rdi
clflush (%rsi)
nop
nop
nop
cmp %rdx, %rdx
mov $121, %rcx
rep movsl
nop
nop
nop
nop
xor %r12, %r12
lea addresses_D_ht+0xd830, %rsi
lea addresses_A_ht+0x8df0, %rdi
nop
nop
nop
nop
mfence
mov $71, %rcx
rep movsb
and %r12, %r12
lea addresses_WC_ht+0xf6e0, %rsi
lea addresses_UC_ht+0x5d58, %rdi
nop
nop
nop
nop
nop
and $8131, %r10
mov $68, %rcx
rep movsq
inc %r10
lea addresses_WC_ht+0x1bed8, %rsi
lea addresses_WC_ht+0x1d758, %rdi
nop
nop
and $12982, %rax
mov $89, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rdx
lea addresses_normal_ht+0x1639c, %r11
clflush (%r11)
nop
nop
nop
dec %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%r11)
nop
nop
nop
nop
nop
xor $31759, %rcx
lea addresses_A_ht+0xdf58, %rsi
lea addresses_WC_ht+0x1e2d8, %rdi
clflush (%rsi)
cmp $4898, %rdx
mov $17, %rcx
rep movsq
nop
nop
xor %r11, %r11
lea addresses_D_ht+0xc758, %r10
nop
nop
nop
nop
nop
dec %rdi
movl $0x61626364, (%r10)
nop
nop
nop
nop
sub $20960, %rdi
lea addresses_WC_ht+0x1158, %rsi
lea addresses_WT_ht+0x1a5f8, %rdi
nop
nop
nop
nop
cmp %r10, %r10
mov $121, %rcx
rep movsl
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x12438, %rsi
lea addresses_WT_ht+0x18958, %rdi
sub %r11, %r11
mov $25, %rcx
rep movsq
nop
nop
xor $5420, %rax
lea addresses_UC_ht+0x91f1, %rsi
lea addresses_A_ht+0xc216, %rdi
nop
nop
xor $700, %rax
mov $46, %rcx
rep movsl
nop
nop
and $38212, %rdx
lea addresses_normal_ht+0xb218, %rsi
lea addresses_A_ht+0x1c898, %rdi
clflush (%rsi)
nop
nop
cmp $55109, %r10
mov $36, %rcx
rep movsq
xor %rdi, %rdi
lea addresses_WC_ht+0x2958, %rsi
lea addresses_D_ht+0xb558, %rdi
nop
nop
nop
add $15538, %r12
mov $50, %rcx
rep movsb
nop
nop
nop
inc %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rbx
push %rsi

// Store
lea addresses_RW+0x9194, %rbx
nop
nop
nop
nop
add $19376, %r11
movb $0x51, (%rbx)
nop
nop
nop
cmp %r11, %r11

// Faulty Load
lea addresses_WT+0x1ad58, %rsi
nop
nop
nop
nop
add %r10, %r10
mov (%rsi), %ebx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'39': 52}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
