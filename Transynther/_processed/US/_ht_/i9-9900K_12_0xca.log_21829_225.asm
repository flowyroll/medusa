.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x9268, %rdi
nop
nop
nop
cmp %r8, %r8
vmovups (%rdi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r9
nop
nop
add %r12, %r12
lea addresses_A_ht+0xd7e8, %rax
clflush (%rax)
nop
nop
nop
add $36758, %r13
movl $0x61626364, (%rax)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x8268, %r13
nop
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm2
and $0xffffffffffffffc0, %r13
vmovaps %ymm2, (%r13)
nop
nop
dec %r8
lea addresses_A_ht+0x6028, %rdi
nop
nop
xor %r8, %r8
mov $0x6162636465666768, %r9
movq %r9, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0x1b4f8, %rsi
lea addresses_A_ht+0x29e8, %rdi
nop
nop
nop
nop
nop
mfence
mov $75, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %r9
lea addresses_WT_ht+0x13728, %rsi
lea addresses_WT_ht+0xb0e8, %rdi
clflush (%rsi)
and %r11, %r11
mov $14, %rcx
rep movsq
nop
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x17be8, %rsi
lea addresses_A_ht+0x4be8, %rdi
nop
nop
nop
add %r11, %r11
mov $19, %rcx
rep movsl
nop
nop
nop
nop
and $53341, %r8
lea addresses_WT_ht+0x14ff8, %rsi
lea addresses_D_ht+0x65e8, %rdi
nop
nop
sub %r11, %r11
mov $17, %rcx
rep movsl
nop
nop
nop
add $62373, %r13
lea addresses_WT_ht+0x1eedf, %rcx
xor %rax, %rax
mov $0x6162636465666768, %r8
movq %r8, %xmm2
movups %xmm2, (%rcx)
xor %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rdi
push %rdx

// Store
lea addresses_RW+0x12ce8, %r8
nop
nop
nop
nop
nop
add $35059, %r9
mov $0x5152535455565758, %r10
movq %r10, (%r8)
nop
sub $7744, %r12

// Load
lea addresses_US+0x176c8, %r8
nop
xor %r11, %r11
mov (%r8), %r9w
nop
nop
nop
and %r10, %r10

// Load
lea addresses_D+0xbe8, %rdx
nop
nop
xor $26958, %r11
mov (%rdx), %r10d
nop
nop
inc %r12

// Faulty Load
lea addresses_US+0x161e8, %r9
and %r10, %r10
movups (%r9), %xmm1
vpextrq $1, %xmm1, %r12
lea oracles, %rdx
and $0xff, %r12
shlq $12, %r12
mov (%rdx,%r12,1), %r12
pop %rdx
pop %rdi
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': True, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': True, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'44': 18278, '45': 1982, '49': 1569}
44 44 45 44 49 44 45 44 44 44 45 44 49 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 49 44 49 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 45 44 49 44 44 44 44 45 44 44 49 44 44 44 49 44 44 44 44 44 44 44 49 44 44 44 45 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 49 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 45 44 44 44 44 44 44 44 49 44 44 44 44 45 44 44 44 44 49 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 45 44 49 44 44 44 44 44 49 44 45 44 45 44 45 44 44 44 44 44 45 44 45 44 44 45 44 44 49 44 49 44 49 44 45 44 49 44 44 44 44 44 44 49 44 44 44 45 44 44 44 45 44 44 44 44 44 44 45 44 44 44 44 45 44 44 44 44 49 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 49 44 44 44 49 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 45 44 45 44 44 44 44 44 44 44 44 44 45 44 45 44 44 44 44 44 44 44 45 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 49 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 49 44 44 44 44 44 44 45 44 44 44 44 45 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 49 44 44 44 44 44 45 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 49 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 49 44 44 49 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 45 44 44 45 44 45 44 45 44 45 44 44 44 45 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 45 44 44 44 45 44 44 44 44 44 45 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 45 44 44 44 45 44 44 44 45 44 45 44 44 45 44 44 44 45 44 44 44 49 44 44 44 44 44 45 44 45 44 44 44 45 44 44 44 44 44 49 44 49 44 45 44 49 44 44 44 44 44 44 44 49 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 45 44 45 44 49 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 49 44 49 44 44 44 44 44 44 44 49 44 44 49 44 44 44 44 44 45 44 44 44 44 44 45 44 44 44 44 44 49 44 45 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 49 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 49 44 44 44 49 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 49 44 49 44 44 44 44 44 44 44 44 44 45 44 45 44 45 44 49 44 44 44 44 44 45 44 44 44 44 44 44 45 44 44 44 44 45 44 49 44 44 44 45 44 49 44 44 44 45 44 44 44 44 44 49 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 45 44 49 44 44 44 44 45 44 45 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 45 44 44 44 44 44 44
*/
