.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x8b1b, %rcx
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
xor %rbx, %rbx
lea addresses_A_ht+0x13d9b, %rdi
nop
nop
nop
dec %rsi
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm7
vpextrq $0, %xmm7, %rax
nop
dec %rbx
lea addresses_WT_ht+0xfa7b, %rsi
lea addresses_D_ht+0x11d1b, %rdi
nop
nop
nop
nop
cmp $14516, %r15
mov $5, %rcx
rep movsq
nop
nop
nop
nop
add $7337, %rbx
lea addresses_WC_ht+0x18994, %rax
xor $56767, %rbp
movw $0x6162, (%rax)
add %rbx, %rbx
lea addresses_WC_ht+0x19a1b, %rdi
nop
nop
nop
nop
cmp %rcx, %rcx
movb (%rdi), %bl
xor %r15, %r15
lea addresses_D_ht+0x1587b, %r15
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%r15)
nop
nop
nop
add $16034, %rbp
lea addresses_WC_ht+0x1c3fb, %r15
cmp %rcx, %rcx
movb $0x61, (%r15)
nop
nop
nop
nop
nop
xor $18227, %rsi
lea addresses_A_ht+0x7bc3, %rsi
lea addresses_WT_ht+0x9773, %rdi
nop
nop
inc %rdx
mov $31, %rcx
rep movsq
add %rbx, %rbx
lea addresses_A_ht+0x16a7b, %rsi
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%rsi), %eax
nop
nop
nop
nop
nop
sub $17451, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Load
lea addresses_D+0xa07b, %rcx
nop
nop
nop
and %r15, %r15
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r11
nop
and $63037, %r11

// REPMOV
lea addresses_PSE+0x1c27b, %rsi
lea addresses_normal+0x38bb, %rdi
nop
nop
nop
xor $29139, %r8
mov $117, %rcx
rep movsb
nop
nop
xor $57476, %r12

// Load
lea addresses_PSE+0x13a7b, %rsi
nop
sub %r12, %r12
movups (%rsi), %xmm6
vpextrq $0, %xmm6, %r8

// Exception!!!
nop
mov (0), %rsi
and $40589, %r8

// Load
lea addresses_A+0x306b, %rsi
nop
nop
nop
xor %rdi, %rdi
movups (%rsi), %xmm5
vpextrq $0, %xmm5, %rcx
add %r11, %r11

// Store
lea addresses_UC+0x192d9, %rdi
nop
nop
sub %r15, %r15
movw $0x5152, (%rdi)
add %r15, %r15

// Store
lea addresses_WC+0x5b5b, %r8
nop
nop
nop
nop
and $38754, %rsi
movl $0x51525354, (%r8)
nop
nop
nop
add %rax, %rax

// Store
lea addresses_PSE+0x1ea7b, %rdi
nop
nop
and $62965, %r12
movl $0x51525354, (%rdi)
xor $49825, %rcx

// Faulty Load
lea addresses_PSE+0x1c27b, %r8
nop
and $49945, %rdi
vmovups (%r8), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r12
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_PSE'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': True, 'size': 16, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
