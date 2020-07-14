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
lea addresses_WC_ht+0x84ab, %rdi
nop
nop
nop
xor $2755, %r10
movb $0x61, (%rdi)
sub $26063, %rdi
lea addresses_WT_ht+0x1ed6f, %rsi
lea addresses_WC_ht+0x13c7, %rdi
nop
sub $65210, %r10
mov $24, %rcx
rep movsl
nop
nop
add $39609, %r10
lea addresses_A_ht+0x22f, %rbp
nop
nop
nop
add %rbx, %rbx
vmovups (%rbp), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
nop
and $36263, %rax
lea addresses_WT_ht+0x1d8f, %rcx
nop
nop
nop
cmp $34088, %r10
mov (%rcx), %rax
nop
nop
nop
and $12908, %rax
lea addresses_normal_ht+0x14647, %rax
nop
nop
and %rbx, %rbx
mov (%rax), %r10w
nop
nop
nop
nop
sub $54770, %r10
lea addresses_WC_ht+0xaf8f, %rcx
nop
nop
add %rsi, %rsi
movb (%rcx), %bl
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0xf96f, %rsi
lea addresses_UC_ht+0x1016f, %rdi
sub $12418, %r15
mov $6, %rcx
rep movsb
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x1856f, %r15
nop
cmp $10094, %rbx
mov (%r15), %bp
nop
nop
nop
nop
add $17539, %rsi
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
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0xcfc9, %rax
nop
nop
nop
nop
inc %rsi
movb $0x51, (%rax)
and %rdx, %rdx

// REPMOV
lea addresses_UC+0x3e2f, %rsi
lea addresses_A+0x1a79f, %rdi
nop
nop
nop
nop
dec %rbp
mov $76, %rcx
rep movsb
nop
nop
nop
nop
add %rsi, %rsi

// Store
mov $0x76f, %rdi
nop
nop
nop
nop
nop
sub %rax, %rax
movw $0x5152, (%rdi)
and $45208, %rbp

// Load
lea addresses_D+0x129af, %rdx
nop
nop
nop
nop
sub $50731, %rcx
mov (%rdx), %bp
nop
nop
nop
add $52672, %rcx

// Store
lea addresses_normal+0x1e56f, %rdi
nop
nop
nop
sub $5558, %rdx
mov $0x5152535455565758, %r15
movq %r15, (%rdi)
nop
nop
nop
nop
nop
cmp $6046, %r15

// Faulty Load
lea addresses_normal+0x1e56f, %rdi
sub %rax, %rax
mov (%rdi), %ebp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'58': 250}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
