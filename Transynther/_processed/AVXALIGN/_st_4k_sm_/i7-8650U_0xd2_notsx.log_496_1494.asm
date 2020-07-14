.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x10ba5, %rsi
lea addresses_D_ht+0x1232d, %rdi
clflush (%rsi)
cmp $48755, %rbp
mov $70, %rcx
rep movsl
nop
cmp %r8, %r8
lea addresses_D_ht+0x5135, %r13
nop
inc %rcx
movw $0x6162, (%r13)
nop
and $56066, %rdi
lea addresses_WT_ht+0x5bcd, %rsi
lea addresses_normal_ht+0x1ded, %rdi
nop
nop
nop
dec %r10
mov $75, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x19339, %rsi
clflush (%rsi)
nop
nop
nop
nop
xor $56490, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
nop
cmp %r10, %r10
lea addresses_normal_ht+0x11252, %rsi
lea addresses_WC_ht+0x160ad, %rdi
nop
nop
nop
sub %rbx, %rbx
mov $123, %rcx
rep movsb
nop
and $59490, %rcx
lea addresses_D_ht+0xb2ad, %r8
nop
and $30583, %r10
movb (%r8), %cl
nop
nop
nop
and $37251, %rcx
lea addresses_A_ht+0x1012d, %rsi
lea addresses_WC_ht+0x12dd2, %rdi
nop
nop
nop
sub $42114, %rbx
mov $8, %rcx
rep movsb
nop
inc %r8
lea addresses_A_ht+0xe7ad, %r13
xor $7255, %rdi
movb (%r13), %r10b
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x802d, %rsi
lea addresses_normal_ht+0x1aa4d, %rdi
nop
nop
nop
nop
nop
cmp $29608, %r8
mov $127, %rcx
rep movsw
nop
nop
sub %rbp, %rbp
lea addresses_UC_ht+0x18bad, %rcx
nop
nop
nop
cmp %rbx, %rbx
movl $0x61626364, (%rcx)
xor %rsi, %rsi
lea addresses_A_ht+0xeb2d, %rdi
nop
nop
nop
cmp %rsi, %rsi
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %rbp
nop
nop
nop
nop
cmp %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x1eb2d, %rdi
nop
nop
nop
nop
nop
and $59472, %r12
movl $0x51525354, (%rdi)
nop
add %r13, %r13

// Load
mov $0xb2d, %rax
nop
nop
nop
nop
nop
sub $48562, %r12
mov (%rax), %edi
nop
and %r12, %r12

// Store
lea addresses_normal+0x1eb2d, %rsi
nop
nop
nop
add %rdi, %rdi
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
inc %rax

// Store
lea addresses_WC+0x1a5ed, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovntdq %ymm5, (%rdi)
nop
nop
nop
nop
add $33371, %rdi

// Store
lea addresses_UC+0xbb2d, %rcx
xor $3410, %r13
movw $0x5152, (%rcx)
nop
nop
and $56975, %rdi

// Store
mov $0x4575f70000000b2d, %rax
add $34694, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rax)
sub %rbx, %rbx

// Store
lea addresses_normal+0x1eb2d, %r12
clflush (%r12)
nop
sub %rbx, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movups %xmm3, (%r12)
nop
nop
nop
cmp $18098, %rax

// Store
mov $0xde3, %r12
nop
nop
nop
nop
nop
and $9727, %rax
movl $0x51525354, (%r12)
nop
and %rbx, %rbx

// Store
lea addresses_WC+0x1a821, %r13
xor %rax, %rax
movl $0x51525354, (%r13)
nop
and $34167, %r13

// Store
lea addresses_PSE+0x1992d, %rbx
nop
inc %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm1
movups %xmm1, (%rbx)
nop
nop
nop
add %rcx, %rcx

// Load
lea addresses_D+0x8385, %rsi
nop
nop
nop
add $35562, %rax
movb (%rsi), %cl
nop
and $64342, %rbx

// Load
lea addresses_RW+0xf12d, %rsi
nop
and $57031, %rbx
mov (%rsi), %r12w
nop
nop
nop
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_normal+0x1eb2d, %rsi
nop
nop
nop
xor $7419, %rax
movb (%rsi), %cl
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'58': 496}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
