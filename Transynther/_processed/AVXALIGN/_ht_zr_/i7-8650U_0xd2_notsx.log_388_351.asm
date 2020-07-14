.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x18bb0, %r11
sub $60651, %rcx
mov (%r11), %rax
nop
nop
cmp $5042, %r9
lea addresses_UC_ht+0x15a0, %r12
nop
nop
nop
nop
nop
mfence
movl $0x61626364, (%r12)
cmp $49882, %r11
lea addresses_A_ht+0x16214, %rsi
lea addresses_WT_ht+0x16798, %rdi
nop
nop
nop
xor $64801, %r12
mov $30, %rcx
rep movsq
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x6be8, %r9
nop
nop
nop
sub %rax, %rax
vmovups (%r9), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r12
cmp %r12, %r12
lea addresses_D_ht+0x28e8, %rsi
lea addresses_WC_ht+0xb0e8, %rdi
clflush (%rsi)
nop
nop
cmp $4920, %rax
mov $50, %rcx
rep movsl
nop
and $17785, %rsi
lea addresses_D_ht+0x1a68, %rax
nop
inc %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
movups %xmm1, (%rax)
nop
nop
dec %rcx
lea addresses_WT_ht+0x1a2e8, %rcx
sub $47650, %rsi
mov (%rcx), %r12
xor %rsi, %rsi
lea addresses_WT_ht+0x178d2, %rsi
lea addresses_WC_ht+0x86e8, %rdi
clflush (%rsi)
nop
add %rax, %rax
mov $108, %rcx
rep movsq
sub $63697, %r9
lea addresses_D_ht+0x10e8e, %rsi
lea addresses_UC_ht+0x159e8, %rdi
and $56242, %rbp
mov $7, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %r12
lea addresses_A_ht+0x34e8, %rsi
lea addresses_UC_ht+0xb9e0, %rdi
nop
nop
nop
nop
xor $21622, %r11
mov $111, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rax, %rax
lea addresses_WC_ht+0x158e8, %rcx
sub $41307, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
and %r11, %r11
lea addresses_A_ht+0x1d8e8, %rsi
lea addresses_WC_ht+0x10528, %rdi
nop
nop
nop
dec %r9
mov $39, %rcx
rep movsb
nop
cmp $20617, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rax
push %rdx
push %rsi

// Store
lea addresses_WT+0x6cf6, %r8
nop
nop
nop
nop
nop
add %r13, %r13
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovups %ymm0, (%r8)
nop
nop
nop
and $32368, %rax

// Store
lea addresses_WC+0x5ba8, %rsi
nop
nop
nop
nop
sub %rdx, %rdx
movb $0x51, (%rsi)
inc %r12

// Faulty Load
lea addresses_US+0x118e8, %rsi
nop
nop
nop
add %r12, %r12
movaps (%rsi), %xmm5
vpextrq $1, %xmm5, %r8
lea oracles, %r12
and $0xff, %r8
shlq $12, %r8
mov (%r12,%r8,1), %r8
pop %rsi
pop %rdx
pop %rax
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'00': 168, '46': 164, '45': 50, '48': 6}
00 00 00 46 45 46 00 00 46 00 45 00 00 00 45 46 46 00 46 46 46 46 46 46 46 00 45 00 46 00 46 00 00 00 00 45 00 46 00 00 48 46 46 46 00 46 00 00 00 46 45 45 00 00 00 45 45 45 45 45 45 46 00 00 46 00 00 46 48 00 46 46 46 00 00 00 48 00 46 46 46 00 00 46 00 00 00 00 45 46 00 00 00 46 00 00 00 00 00 46 45 00 46 46 00 00 46 46 46 46 45 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 45 46 00 00 00 46 46 46 46 46 46 46 46 00 00 46 00 46 46 46 46 46 00 00 00 46 00 46 00 00 46 46 46 46 46 00 45 00 45 46 46 46 00 00 46 00 46 00 46 46 00 00 00 00 00 46 46 46 48 46 00 45 00 46 46 46 46 00 00 46 46 46 46 46 00 00 45 46 46 45 45 45 46 45 45 00 45 00 46 00 00 00 00 46 00 46 45 00 00 00 00 46 00 00 00 00 46 45 00 46 46 00 00 46 46 46 46 46 46 46 46 46 00 46 00 00 00 46 46 00 00 00 45 00 46 00 00 46 45 45 46 00 00 45 45 46 00 00 00 45 46 00 46 46 46 00 00 46 46 00 46 00 00 46 46 00 46 00 48 46 46 46 00 46 45 00 00 00 45 45 00 46 00 00 48 46 45 45 00 00 00 00 00 45 46 00 00 00 00 00 00 00 46 46 46 46 46 00 46 46 46 45 00 00 46 00 46 45 46 00 46 46 00 00 46 45 46 00 00 00 45 46 45 00 00 45 46 00 00 46 46 46 00 46 45 46 45 00 45 00 00 00 00 46 46 00 00 46 00
*/
