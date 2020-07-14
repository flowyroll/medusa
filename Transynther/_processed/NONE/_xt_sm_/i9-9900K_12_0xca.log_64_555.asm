.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x5034, %rsi
lea addresses_normal_ht+0xb764, %rdi
nop
nop
nop
xor $23534, %r12
mov $63, %rcx
rep movsl
and $52106, %rbx
lea addresses_normal_ht+0x19964, %rax
clflush (%rax)
nop
nop
cmp %rbp, %rbp
movb (%rax), %bl
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0x67cc, %r12
add $1034, %rax
movb $0x61, (%r12)
nop
nop
nop
nop
nop
xor $31414, %rsi
lea addresses_WT_ht+0x114e4, %rdi
nop
nop
nop
nop
inc %r12
movups (%rdi), %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x195fc, %r12
nop
nop
nop
nop
xor %rbp, %rbp
mov (%r12), %esi
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x9664, %rsi
lea addresses_WT_ht+0x1cb64, %rdi
and %r14, %r14
mov $85, %rcx
rep movsb
nop
nop
nop
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rbx
push %rdx
push %rsi

// Store
lea addresses_UC+0x4164, %rdx
nop
add $30205, %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm7
vmovups %ymm7, (%rdx)
and %rdx, %rdx

// Store
lea addresses_UC+0x1c964, %r8
nop
nop
nop
nop
nop
sub $30529, %rsi
movl $0x51525354, (%r8)
sub $65347, %r11

// Store
lea addresses_normal+0x6964, %rdx
nop
nop
nop
xor $23858, %rsi
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
dec %rbx

// Faulty Load
lea addresses_UC+0x1c964, %r11
nop
sub $22355, %r15
mov (%r11), %r14w
lea oracles, %r11
and $0xff, %r14
shlq $12, %r14
mov (%r11,%r14,1), %r14
pop %rsi
pop %rdx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': True, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'54': 64}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
