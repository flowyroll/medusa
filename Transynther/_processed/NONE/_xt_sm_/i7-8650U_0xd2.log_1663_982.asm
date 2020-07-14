.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x91a1, %r10
nop
nop
nop
sub %rsi, %rsi
mov (%r10), %r13w
nop
nop
nop
xor $13988, %rdx
lea addresses_WT_ht+0x151a1, %r14
nop
nop
add $32355, %r15
mov $0x6162636465666768, %r12
movq %r12, (%r14)
nop
nop
nop
nop
add %r12, %r12
lea addresses_normal_ht+0x7601, %rsi
lea addresses_WC_ht+0x5149, %rdi
cmp %r13, %r13
mov $95, %rcx
rep movsw
nop
nop
nop
and $19373, %r10
lea addresses_WC_ht+0x135b1, %r15
nop
dec %rsi
mov (%r15), %r14d
nop
nop
nop
nop
and $57874, %r13
lea addresses_UC_ht+0xfda1, %r14
nop
nop
nop
nop
and $18324, %r12
mov (%r14), %r13
nop
nop
dec %r12
lea addresses_D_ht+0x81a1, %rsi
lea addresses_UC_ht+0xb9a1, %rdi
nop
nop
nop
nop
dec %r14
mov $20, %rcx
rep movsb
sub $17850, %rdx
lea addresses_WT_ht+0x19da1, %rdx
nop
xor %r13, %r13
movw $0x6162, (%rdx)
nop
nop
sub $33918, %rsi
lea addresses_D_ht+0xa1a1, %rsi
lea addresses_D_ht+0x1da21, %rdi
clflush (%rsi)
sub %r13, %r13
mov $51, %rcx
rep movsb
nop
nop
inc %rdi
lea addresses_D_ht+0x2761, %rsi
lea addresses_WT_ht+0x90a1, %rdi
nop
nop
nop
nop
xor %r15, %r15
mov $34, %rcx
rep movsl
nop
cmp %r12, %r12
lea addresses_WT_ht+0x7b41, %r10
nop
nop
xor %rcx, %rcx
mov (%r10), %r15w
inc %rdx
lea addresses_normal_ht+0xacd5, %rdi
nop
nop
nop
nop
nop
xor $40990, %r15
movb (%rdi), %r14b
nop
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0x1d9a1, %rsi
lea addresses_WT_ht+0x169a1, %rdi
nop
nop
nop
nop
nop
sub $52967, %rdx
mov $127, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rdx
lea addresses_WT_ht+0x19fa1, %rsi
lea addresses_UC_ht+0x1a1, %rdi
inc %r14
mov $68, %rcx
rep movsw
nop
nop
nop
cmp $56178, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdi

// Store
mov $0x3d3aa700000001a1, %rdi
nop
nop
nop
nop
nop
inc %r11
movl $0x51525354, (%rdi)
nop
nop
nop
xor %r11, %r11

// Load
lea addresses_WT+0x1dda1, %rdi
nop
dec %r14
movups (%rdi), %xmm7
vpextrq $0, %xmm7, %r9
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_normal+0x1dda1, %rdi
nop
and %rax, %rax
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
add $39724, %r9

// Store
lea addresses_PSE+0x109a1, %rdi
inc %r11
mov $0x5152535455565758, %r9
movq %r9, (%rdi)
nop
cmp %r11, %r11

// Store
lea addresses_PSE+0x11621, %r12
clflush (%r12)
nop
nop
nop
nop
sub %r9, %r9
movw $0x5152, (%r12)
nop
and $16358, %rcx

// Faulty Load
lea addresses_PSE+0x109a1, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %r14, %r14
mov (%rdi), %r9
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'58': 1663}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
