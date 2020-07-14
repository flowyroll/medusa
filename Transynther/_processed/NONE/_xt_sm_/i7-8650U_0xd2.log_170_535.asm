.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x3bec, %rsi
lea addresses_D_ht+0x1df28, %rdi
clflush (%rsi)
and %rbx, %rbx
mov $59, %rcx
rep movsl
nop
sub %r14, %r14
lea addresses_D_ht+0xd868, %rcx
nop
sub $37975, %r15
movb (%rcx), %r13b
nop
nop
nop
nop
sub $39406, %rsi
lea addresses_D_ht+0x19d49, %r15
nop
nop
nop
sub $13781, %rcx
mov (%r15), %ebx
nop
nop
nop
nop
nop
add %r15, %r15
lea addresses_A_ht+0x107a8, %rsi
nop
nop
nop
nop
sub $12007, %rdi
mov $0x6162636465666768, %r13
movq %r13, (%rsi)
nop
nop
dec %r15
lea addresses_UC_ht+0x871c, %rbx
clflush (%rbx)
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm3
and $0xffffffffffffffc0, %rbx
movntdq %xmm3, (%rbx)
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WT_ht+0x1da28, %rdi
nop
nop
nop
nop
nop
add $64407, %rcx
mov (%rdi), %r13w
xor $8685, %rdi
lea addresses_UC_ht+0x19edc, %rsi
lea addresses_normal_ht+0x25e8, %rdi
nop
nop
nop
nop
xor %r10, %r10
mov $28, %rcx
rep movsb
nop
nop
cmp %r10, %r10
lea addresses_normal_ht+0x4868, %r13
inc %r10
movb (%r13), %cl
nop
cmp %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_A+0xea36, %rbx
nop
nop
and %rdi, %rdi
movl $0x51525354, (%rbx)
sub %rdi, %rdi

// Load
lea addresses_WT+0x1f39c, %rdx
sub %rbp, %rbp
movups (%rdx), %xmm6
vpextrq $1, %xmm6, %rcx
nop
nop
nop
nop
nop
add $42971, %rbx

// Store
lea addresses_WT+0x4cd0, %rbp
sub $44315, %rbx
movl $0x51525354, (%rbp)
nop
nop
nop
and $33501, %r9

// Load
lea addresses_A+0x11232, %rdx
nop
nop
nop
nop
nop
and $16167, %rbp
movups (%rdx), %xmm5
vpextrq $0, %xmm5, %r9
nop
nop
nop
nop
nop
cmp %rdx, %rdx

// Load
lea addresses_RW+0xbce8, %rdx
nop
nop
nop
nop
sub $29021, %rbx
mov (%rdx), %ecx
nop
nop
nop
nop
nop
sub %rbp, %rbp

// Load
lea addresses_WT+0x1ace8, %rcx
nop
nop
nop
nop
sub $26613, %r9
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
sub %rbx, %rbx

// Store
lea addresses_D+0x1c4e8, %rdx
nop
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rdx)
xor $14215, %rdi

// Store
lea addresses_WC+0xeae8, %r8
nop
nop
nop
nop
and $42562, %r9
movb $0x51, (%r8)
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_RW+0x1b968, %rcx
nop
nop
nop
nop
nop
xor $2577, %r8
mov $0x5152535455565758, %rdi
movq %rdi, (%rcx)
xor $35282, %rcx

// Faulty Load
lea addresses_D+0x1c4e8, %rcx
nop
nop
nop
cmp %rdx, %rdx
mov (%rcx), %ebp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'58': 170}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
