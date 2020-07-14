.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xe421, %rsi
lea addresses_D_ht+0x9601, %rdi
nop
nop
nop
nop
xor $63205, %r8
mov $95, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $61837, %rbx
lea addresses_WC_ht+0x3821, %rbx
nop
nop
nop
and %r11, %r11
movl $0x61626364, (%rbx)
nop
nop
nop
add $27691, %rbx
lea addresses_A_ht+0x1a3ab, %rsi
lea addresses_WC_ht+0x17c21, %rdi
nop
nop
nop
xor %r8, %r8
mov $51, %rcx
rep movsl
nop
nop
cmp $23237, %rbx
lea addresses_UC_ht+0x6639, %rbx
nop
nop
nop
nop
nop
inc %r13
movb (%rbx), %r8b
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_UC_ht+0x1a161, %rbx
nop
and %r13, %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%rbx)
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x1a421, %rcx
clflush (%rcx)
inc %r11
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
sub $57674, %r8
lea addresses_A_ht+0x1241c, %rsi
lea addresses_D_ht+0xa921, %rdi
nop
nop
nop
nop
nop
xor $47500, %r11
mov $23, %rcx
rep movsl
nop
nop
nop
and %r11, %r11
lea addresses_normal_ht+0x1e061, %rsi
lea addresses_WT_ht+0x2761, %rdi
nop
nop
xor $35705, %r9
mov $7, %rcx
rep movsb
nop
nop
nop
sub $45556, %rcx
lea addresses_normal_ht+0xb601, %rdi
nop
nop
cmp $49881, %rcx
mov $0x6162636465666768, %r8
movq %r8, (%rdi)
nop
nop
dec %r11
lea addresses_D_ht+0x4c21, %rsi
lea addresses_normal_ht+0x1d001, %rdi
nop
nop
nop
nop
nop
lfence
mov $13, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $26270, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %rax
push %rbp
push %rdi
push %rdx

// Store
lea addresses_WT+0xdf81, %rdx
nop
nop
nop
nop
sub $5977, %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm3
movaps %xmm3, (%rdx)
nop
nop
nop
cmp $60287, %r12

// Faulty Load
lea addresses_RW+0x4421, %rbp
nop
nop
nop
nop
sub $9089, %rax
movups (%rbp), %xmm5
vpextrq $0, %xmm5, %rdx
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': True, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
