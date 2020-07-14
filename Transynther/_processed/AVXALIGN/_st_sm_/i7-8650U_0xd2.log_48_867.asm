.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x730, %rax
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0xa590, %r12
nop
nop
inc %rbx
movb (%r12), %cl
dec %r12
lea addresses_normal_ht+0x1dc0, %rcx
xor %r12, %r12
movups (%rcx), %xmm5
vpextrq $0, %xmm5, %rbp
nop
nop
nop
nop
dec %r12
lea addresses_normal_ht+0x5b70, %r12
nop
nop
nop
add $23484, %rdi
movb (%r12), %bl
nop
nop
nop
nop
nop
xor $7843, %rcx
lea addresses_WC_ht+0x1bf10, %rbx
nop
nop
nop
sub %rcx, %rcx
movb $0x61, (%rbx)
nop
nop
and $28035, %rbp
lea addresses_normal_ht+0x1b938, %rsi
lea addresses_normal_ht+0xa3b0, %rdi
nop
nop
sub $21948, %rbx
mov $46, %rcx
rep movsl
nop
add $4724, %rsi
lea addresses_normal_ht+0x103e0, %rax
nop
nop
nop
add $44521, %rsi
mov (%rax), %r12w
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_A_ht+0x5d90, %r12
nop
nop
nop
and $37612, %rax
mov (%r12), %di
nop
nop
nop
nop
and $29189, %rbp
lea addresses_normal_ht+0x169b0, %rbp
nop
inc %r12
mov (%rbp), %rsi
nop
xor $56604, %rbp
lea addresses_A_ht+0x12eb0, %rsi
lea addresses_WC_ht+0x18b86, %rdi
nop
nop
nop
nop
dec %r15
mov $80, %rcx
rep movsw
nop
nop
xor %rax, %rax
lea addresses_normal_ht+0xa710, %r15
nop
mfence
mov (%r15), %ebx
nop
nop
nop
dec %rax
lea addresses_normal_ht+0x1250, %rdi
nop
nop
nop
add $13819, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
and $0xffffffffffffffc0, %rdi
vmovntdq %ymm7, (%rdi)
xor %r12, %r12
lea addresses_WC_ht+0xba62, %rsi
sub %rdi, %rdi
movw $0x6162, (%rsi)
nop
nop
nop
xor $26808, %r12
lea addresses_A_ht+0x11df0, %rsi
and %rcx, %rcx
mov $0x6162636465666768, %r12
movq %r12, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
nop
nop
add $40925, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_PSE+0x16630, %r13
nop
nop
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, (%r13)
nop
nop
sub $42516, %r13

// Store
lea addresses_A+0x13d90, %r13
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %r8
movq %r8, (%r13)
nop
nop
nop
nop
nop
cmp $25216, %r8

// Faulty Load
lea addresses_A+0x13d90, %rbp
clflush (%rbp)
nop
nop
nop
inc %rdx
movb (%rbp), %cl
lea oracles, %rdx
and $0xff, %rcx
shlq $12, %rcx
mov (%rdx,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'58': 48}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
