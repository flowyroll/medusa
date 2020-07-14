.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x188d2, %r8
nop
nop
xor $14581, %r15
mov $0x6162636465666768, %rdx
movq %rdx, (%r8)
add $11206, %rdi
lea addresses_WC_ht+0x50d2, %rsi
lea addresses_normal_ht+0x47d2, %rdi
nop
xor $48070, %r12
mov $117, %rcx
rep movsb
nop
nop
nop
inc %r15
lea addresses_A_ht+0xda26, %r8
nop
nop
add $64358, %rdx
mov (%r8), %edi
nop
nop
xor %r12, %r12
lea addresses_UC_ht+0x72d2, %rsi
lea addresses_UC_ht+0x11d32, %rdi
nop
xor $4294, %r9
mov $56, %rcx
rep movsw
nop
nop
nop
xor %r12, %r12
lea addresses_A_ht+0x180d2, %rdi
cmp $29301, %r12
movw $0x6162, (%rdi)
xor $23467, %rsi
lea addresses_D_ht+0x74d2, %rdx
nop
add %rcx, %rcx
movb $0x61, (%rdx)
nop
nop
nop
nop
nop
sub $61783, %r15
lea addresses_D_ht+0x114d2, %r9
clflush (%r9)
nop
nop
nop
nop
xor $4191, %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r9)
nop
nop
nop
nop
add $6191, %rcx
lea addresses_WC_ht+0x82d2, %rdx
nop
nop
sub $9511, %rcx
movl $0x61626364, (%rdx)
nop
nop
xor $45827, %r8
lea addresses_A_ht+0xdfb2, %rsi
lea addresses_normal_ht+0x16ad2, %rdi
add %r9, %r9
mov $23, %rcx
rep movsw
nop
nop
dec %r9
lea addresses_WT_ht+0x1c332, %r9
nop
nop
nop
nop
nop
and %r12, %r12
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
movups %xmm4, (%r9)
nop
nop
nop
nop
nop
xor $32074, %rsi
lea addresses_UC_ht+0x60d2, %rdx
clflush (%rdx)
nop
nop
and $54409, %rsi
movl $0x61626364, (%rdx)
nop
nop
sub $8588, %r8
lea addresses_WC_ht+0x7c81, %rsi
lea addresses_normal_ht+0x1b6d2, %rdi
nop
nop
cmp %r8, %r8
mov $74, %rcx
rep movsl
add %r8, %r8
lea addresses_D_ht+0x566a, %rsi
lea addresses_A_ht+0x1b136, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %r15, %r15
mov $112, %rcx
rep movsb
nop
nop
nop
nop
and $50335, %r8
lea addresses_D_ht+0x15a22, %r12
nop
nop
nop
dec %rdx
movb $0x61, (%r12)
nop
nop
nop
dec %r12
lea addresses_WT_ht+0xf4d2, %r9
nop
nop
nop
nop
and $4461, %r15
movb $0x61, (%r9)
nop
nop
add $27991, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_RW+0xcd4a, %rbx
nop
xor $4492, %rcx
movw $0x5152, (%rbx)
nop
nop
sub $38975, %rsi

// Store
lea addresses_normal+0x1683e, %rdx
nop
nop
nop
cmp %r11, %r11
movw $0x5152, (%rdx)
nop
nop
nop
sub $28800, %r11

// Store
lea addresses_RW+0x168d2, %rsi
nop
nop
nop
nop
nop
cmp $49095, %rcx
movb $0x51, (%rsi)
nop
nop
nop
sub %r12, %r12

// Load
lea addresses_RW+0x6512, %r12
sub %r13, %r13
mov (%r12), %esi
nop
nop
nop
nop
inc %rdx

// Faulty Load
lea addresses_WC+0x1b0d2, %rbx
nop
nop
nop
nop
xor %rcx, %rcx
movups (%rbx), %xmm6
vpextrq $0, %xmm6, %r12
lea oracles, %rcx
and $0xff, %r12
shlq $12, %r12
mov (%rcx,%r12,1), %r12
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
