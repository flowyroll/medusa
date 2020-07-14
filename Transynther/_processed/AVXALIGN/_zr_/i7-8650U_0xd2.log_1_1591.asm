.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x41c7, %rdi
xor %rsi, %rsi
movb (%rdi), %r11b
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0xcbc7, %rax
nop
nop
nop
sub $21386, %rcx
movb (%rax), %r14b
nop
nop
dec %rax
lea addresses_WT_ht+0x11fc7, %rsi
lea addresses_A_ht+0x12447, %rdi
clflush (%rdi)
nop
nop
and %rbx, %rbx
mov $65, %rcx
rep movsq
cmp %rsi, %rsi
lea addresses_WT_ht+0xb1c7, %rsi
nop
nop
nop
sub $35112, %rax
movups (%rsi), %xmm2
vpextrq $0, %xmm2, %r14
nop
nop
nop
nop
cmp $53534, %rax
lea addresses_WC_ht+0x19dc7, %rsi
lea addresses_UC_ht+0x1a6bf, %rdi
clflush (%rsi)
nop
nop
cmp %rbx, %rbx
mov $19, %rcx
rep movsw
and %rdi, %rdi
lea addresses_A_ht+0x19fc7, %rsi
lea addresses_UC_ht+0x10b47, %rdi
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $37, %rcx
rep movsq
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x133c7, %rbp
nop
nop
nop
sub $30593, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rbp)
nop
inc %rcx
lea addresses_normal_ht+0x167c7, %r11
nop
nop
nop
nop
nop
xor $9202, %rbx
movb $0x61, (%r11)
nop
nop
inc %r11
lea addresses_normal_ht+0x1a834, %rsi
lea addresses_normal_ht+0x106ab, %rdi
nop
nop
nop
cmp %r11, %r11
mov $97, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x13193, %rdi
nop
cmp %r14, %r14
movl $0x61626364, (%rdi)
nop
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x143c7, %rsi
lea addresses_D+0x11fe7, %rdi
nop
nop
and %r8, %r8
mov $5, %rcx
rep movsl
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_WT+0x3dc7, %rbp
nop
sub %r10, %r10
mov $0x5152535455565758, %r9
movq %r9, (%rbp)
nop
nop
nop
nop
nop
cmp $16231, %r8

// Store
mov $0xbc7, %rsi
nop
nop
cmp $63832, %rbp
movl $0x51525354, (%rsi)
nop
cmp %rsi, %rsi

// Store
lea addresses_UC+0x8c47, %r8
inc %rsi
movb $0x51, (%r8)
add %r8, %r8

// Store
mov $0x498ca80000000c67, %rsi
nop
nop
nop
nop
sub $1747, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
nop
nop
xor %r8, %r8

// Load
lea addresses_D+0x1ddc7, %r10
nop
dec %rbp
mov (%r10), %rsi
and %rcx, %rcx

// Faulty Load
lea addresses_D+0x143c7, %rbp
nop
sub %rsi, %rsi
vmovaps (%rbp), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r9
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_D', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'00': 1}
00
*/
