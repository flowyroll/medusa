.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x10328, %rbx
nop
nop
nop
nop
inc %rdx
mov (%rbx), %di
nop
nop
nop
nop
dec %rdx
lea addresses_WC_ht+0x1e362, %rsi
lea addresses_D_ht+0x1ab28, %rdi
nop
nop
nop
and %rax, %rax
mov $121, %rcx
rep movsq
add %rcx, %rcx
lea addresses_D_ht+0x2328, %rdi
nop
nop
nop
nop
and $46921, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%rdi)
add %rcx, %rcx
lea addresses_UC_ht+0x1c4e8, %rsi
lea addresses_A_ht+0x6328, %rdi
cmp %rbx, %rbx
mov $75, %rcx
rep movsl
and $45880, %rdi
lea addresses_normal_ht+0x2b28, %rcx
nop
nop
cmp %rax, %rax
movl $0x61626364, (%rcx)
nop
nop
nop
add $59077, %rbx
lea addresses_normal_ht+0x11728, %rsi
lea addresses_D_ht+0x1a728, %rdi
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $78, %rcx
rep movsb
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0xc9a8, %rdx
nop
nop
nop
nop
nop
add %rbp, %rbp
mov (%rdx), %rax
nop
nop
nop
nop
nop
cmp $16424, %rsi
lea addresses_WT_ht+0x17818, %rcx
nop
sub $59691, %rsi
vmovups (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdi
and %rdx, %rdx
lea addresses_WC_ht+0x12e18, %rbx
nop
sub $21670, %rax
movb $0x61, (%rbx)
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x1d704, %rsi
lea addresses_D_ht+0x1327f, %rdi
nop
nop
add $42406, %rbp
mov $127, %rcx
rep movsb
dec %rbp
lea addresses_normal_ht+0x8b28, %rsi
nop
nop
nop
nop
nop
sub $48632, %rdi
movb (%rsi), %al
nop
nop
nop
sub $5333, %rbx
lea addresses_normal_ht+0x19ecc, %rsi
lea addresses_A_ht+0x1ee28, %rdi
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $111, %rcx
rep movsl
xor $272, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x1bb28, %rax
nop
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm2
vmovups %ymm2, (%rax)
inc %rdi

// REPMOV
lea addresses_normal+0x149a, %rsi
lea addresses_WC+0x188a8, %rdi
and %rdx, %rdx
mov $22, %rcx
rep movsw
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_PSE+0x15728, %rsi
nop
nop
nop
nop
and $36400, %rax
movb $0x51, (%rsi)
nop
inc %rdx

// Faulty Load
lea addresses_WC+0x1bb28, %rax
clflush (%rax)
nop
nop
and $44002, %rsi
movb (%rax), %r9b
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'58': 829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
