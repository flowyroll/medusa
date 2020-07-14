.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xdcb4, %rsi
lea addresses_WC_ht+0x13eb4, %rdi
nop
nop
nop
nop
cmp $37957, %r10
mov $72, %rcx
rep movsl
nop
nop
cmp $45166, %r10
lea addresses_normal_ht+0x8bc4, %rax
nop
nop
nop
add %rbx, %rbx
movl $0x61626364, (%rax)
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x2cb4, %rsi
lea addresses_normal_ht+0x1d174, %rdi
nop
nop
nop
dec %r13
mov $72, %rcx
rep movsl
nop
nop
nop
xor $65318, %r14
lea addresses_normal_ht+0x11cb4, %rbx
nop
add $54043, %r10
and $0xffffffffffffffc0, %rbx
movaps (%rbx), %xmm6
vpextrq $1, %xmm6, %rax
nop
nop
nop
xor %rax, %rax
lea addresses_A_ht+0x152aa, %rsi
lea addresses_normal_ht+0x9ad4, %rdi
nop
nop
nop
and %r13, %r13
mov $76, %rcx
rep movsw
nop
and %r14, %r14
lea addresses_A_ht+0xdfb4, %r13
nop
nop
nop
and %rcx, %rcx
movups (%r13), %xmm7
vpextrq $1, %xmm7, %r14
nop
nop
sub %r13, %r13
lea addresses_UC_ht+0x106b4, %rsi
lea addresses_UC_ht+0x1cda0, %rdi
nop
nop
nop
cmp $8663, %r10
mov $44, %rcx
rep movsb
nop
nop
nop
and $37350, %r14
lea addresses_A_ht+0x17cb4, %rsi
lea addresses_UC_ht+0xe5b4, %rdi
nop
sub %r13, %r13
mov $50, %rcx
rep movsb
sub $59918, %r10
lea addresses_UC_ht+0x1b8b4, %rax
nop
nop
nop
cmp $6563, %rbx
mov $0x6162636465666768, %r13
movq %r13, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
nop
nop
add $45483, %rsi
lea addresses_WT_ht+0xfcb4, %rsi
lea addresses_D_ht+0x378c, %rdi
nop
nop
sub %r10, %r10
mov $25, %rcx
rep movsw
nop
dec %rbx
lea addresses_normal_ht+0xf8b4, %rcx
nop
nop
nop
nop
nop
and %rax, %rax
mov (%rcx), %ebx
nop
cmp $3031, %rsi
lea addresses_UC_ht+0xaa51, %r10
nop
nop
nop
nop
xor $24323, %rax
mov (%r10), %ebx
and $55581, %rsi
lea addresses_A_ht+0x160b4, %rsi
nop
nop
nop
nop
add $37054, %rcx
movb (%rsi), %bl
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_RW+0x81b4, %rbp
nop
nop
and %rbx, %rbx
movb $0x51, (%rbp)
nop
nop
nop
nop
nop
dec %rbx

// Load
lea addresses_RW+0xccb4, %r9
and $17802, %r12
mov (%r9), %bp
nop
nop
nop
nop
nop
add $16047, %r9

// Store
lea addresses_A+0x17286, %rbx
and %rdx, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
nop
nop
nop
cmp $63992, %rdx

// Store
lea addresses_PSE+0x17174, %rbp
nop
nop
nop
xor $46465, %r9
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%rbp)
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_WC+0x164b4, %r12
nop
nop
nop
nop
xor $13371, %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm1
vmovups %ymm1, (%r12)
sub %rdx, %rdx

// Store
lea addresses_WC+0xc8b4, %rdx
nop
nop
nop
nop
and %r12, %r12
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rdx)
nop
nop
nop
nop
nop
and %rbx, %rbx

// Faulty Load
lea addresses_RW+0xccb4, %r12
and %rbx, %rbx
movb (%r12), %r11b
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': True, 'NT': True, 'congruent': 10, 'same': False}}
{'32': 53}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
