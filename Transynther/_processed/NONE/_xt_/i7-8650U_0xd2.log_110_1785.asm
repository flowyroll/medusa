.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xf14a, %rbx
nop
nop
nop
and %r9, %r9
movl $0x61626364, (%rbx)
nop
nop
nop
sub $29521, %rdi
lea addresses_normal_ht+0x7c06, %rbx
sub $3396, %r14
mov (%rbx), %edi
nop
nop
nop
sub %r9, %r9
lea addresses_WC_ht+0x14a46, %rsi
sub %r13, %r13
mov $0x6162636465666768, %r14
movq %r14, %xmm6
vmovups %ymm6, (%rsi)
nop
and $13872, %rdx
lea addresses_D_ht+0x1b526, %rsi
lea addresses_UC_ht+0x14286, %rdi
nop
cmp $15961, %rdx
mov $17, %rcx
rep movsq
nop
nop
nop
nop
add %r9, %r9
lea addresses_A_ht+0x18c46, %rdx
nop
nop
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
add $19232, %rsi
lea addresses_A_ht+0x2e60, %rsi
lea addresses_D_ht+0x15cc0, %rdi
nop
nop
nop
and %rbx, %rbx
mov $75, %rcx
rep movsb
dec %rsi
lea addresses_UC_ht+0x4246, %rdi
nop
nop
cmp $17474, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
sub %r13, %r13
lea addresses_normal_ht+0x1375e, %r13
nop
nop
nop
nop
nop
add $9924, %rbx
mov (%r13), %r9d
nop
nop
sub %r13, %r13
lea addresses_normal_ht+0x1704e, %rdx
nop
cmp $43081, %rbx
movb $0x61, (%rdx)
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x12dc6, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x1afae, %rbx
nop
nop
and $3589, %rcx
movb $0x61, (%rbx)
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x130ae, %rbx
nop
mfence
mov (%rbx), %r9w
nop
sub $53780, %rdi
lea addresses_D_ht+0x1b586, %r14
nop
nop
nop
inc %rdx
movw $0x6162, (%r14)
nop
xor $31364, %rbx
lea addresses_normal_ht+0x1a206, %rbx
nop
nop
nop
nop
nop
dec %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rbx)
nop
nop
nop
nop
cmp $55774, %r13
lea addresses_A_ht+0x12046, %r14
nop
cmp $42919, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm1
vmovups %ymm1, (%r14)
nop
nop
and $33511, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %r9
push %rax
push %rdx

// Store
lea addresses_normal+0xb4fe, %r10
clflush (%r10)
nop
xor %r15, %r15
mov $0x5152535455565758, %r11
movq %r11, (%r10)
nop
cmp %rax, %rax

// Faulty Load
lea addresses_normal+0x6a46, %rax
nop
nop
nop
nop
nop
cmp %r8, %r8
mov (%rax), %r11d
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'34': 110}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
