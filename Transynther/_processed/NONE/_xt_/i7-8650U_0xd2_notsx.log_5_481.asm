.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1c3a, %rsi
lea addresses_UC_ht+0xa86a, %rdi
nop
and $5086, %rbp
mov $99, %rcx
rep movsw
nop
nop
inc %r13
lea addresses_UC_ht+0x99eb, %rax
nop
nop
nop
nop
nop
sub $2580, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
nop
nop
nop
nop
nop
inc %rax
lea addresses_UC_ht+0xb26a, %rsi
lea addresses_WT_ht+0x1766a, %rdi
nop
nop
nop
nop
nop
cmp $52346, %r9
mov $57, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0x1212a, %rsi
nop
nop
dec %rax
mov (%rsi), %r13d
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x1e56a, %rbp
nop
nop
nop
nop
cmp $46142, %rcx
movups (%rbp), %xmm3
vpextrq $0, %xmm3, %r9
nop
xor %rbp, %rbp
lea addresses_WT_ht+0x1a6a, %rsi
lea addresses_D_ht+0x1819a, %rdi
nop
sub %rbx, %rbx
mov $21, %rcx
rep movsq
nop
nop
nop
xor %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_A+0x8b6a, %rsi
lea addresses_PSE+0x17dae, %rdi
nop
nop
nop
inc %r11
mov $105, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_WC+0x1606a, %rdi
clflush (%rdi)
nop
nop
nop
sub %r8, %r8
movl $0x51525354, (%rdi)
nop
nop
nop
sub %r11, %r11

// Load
lea addresses_normal+0x2808, %r11
nop
dec %rcx
vmovups (%r11), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
nop
nop
and $56523, %rsi

// Load
mov $0x6ed3250000000f72, %r8
clflush (%r8)
nop
and $20143, %rdi
mov (%r8), %rdx
nop
nop
nop
nop
nop
dec %rdi

// Store
lea addresses_US+0x1dbb5, %r11
nop
nop
sub %r8, %r8
movb $0x51, (%r11)
nop
nop
nop
nop
and %r11, %r11

// Faulty Load
lea addresses_PSE+0x7a6a, %r15
nop
and $29815, %r8
mov (%r15), %r11d
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'33': 5}
33 33 33 33 33
*/
