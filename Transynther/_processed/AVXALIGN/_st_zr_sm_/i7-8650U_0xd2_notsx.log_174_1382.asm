.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x24ea, %rcx
nop
add %rsi, %rsi
movw $0x6162, (%rcx)
nop
nop
add %rbx, %rbx
lea addresses_normal_ht+0xc6ea, %rsi
lea addresses_UC_ht+0x186ea, %rdi
nop
sub $25283, %r9
mov $55, %rcx
rep movsl
nop
nop
nop
nop
xor $35365, %r9
lea addresses_normal_ht+0x8955, %rax
nop
nop
nop
nop
nop
sub $5154, %r15
mov (%rax), %r9w
nop
nop
nop
and $65457, %rax
lea addresses_normal_ht+0xf44e, %rsi
lea addresses_UC_ht+0xba86, %rdi
nop
nop
nop
nop
nop
add $37741, %r15
mov $101, %rcx
rep movsw
xor $48418, %rax
lea addresses_WT_ht+0x1b1ca, %r9
nop
nop
cmp %rcx, %rcx
and $0xffffffffffffffc0, %r9
movaps (%r9), %xmm5
vpextrq $1, %xmm5, %r15
nop
nop
nop
nop
nop
xor $6378, %rcx
lea addresses_A_ht+0x1932, %rcx
nop
nop
nop
nop
nop
dec %rbx
mov $0x6162636465666768, %r9
movq %r9, (%rcx)
nop
nop
add $57599, %rbx
lea addresses_D_ht+0x299a, %rsi
lea addresses_WT_ht+0x128c2, %rdi
nop
nop
nop
nop
nop
add %rbx, %rbx
mov $108, %rcx
rep movsq
xor $53197, %rbx
lea addresses_WC_ht+0x172ea, %r9
nop
nop
nop
nop
xor $6887, %rcx
mov (%r9), %si
nop
inc %rcx
lea addresses_A_ht+0x18eea, %rdi
clflush (%rdi)
inc %rax
vmovups (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbx
nop
nop
nop
cmp $48485, %rcx
lea addresses_A_ht+0x188ea, %rax
and $34400, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%rax)
xor $59034, %rsi
lea addresses_WT_ht+0x6f6a, %rsi
lea addresses_A_ht+0xfcce, %rdi
nop
inc %r9
mov $34, %rcx
rep movsb
dec %rcx
lea addresses_A_ht+0x1e1ea, %rdi
nop
nop
sub %rbx, %rbx
mov (%rdi), %rsi
nop
dec %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %rdi
push %rdx
push %rsi

// Store
mov $0x7899cd0000000eea, %rdi
nop
nop
nop
nop
nop
and $57456, %r8
movl $0x51525354, (%rdi)
nop
nop
nop
sub $60958, %r13

// Store
lea addresses_US+0x1f6fe, %r10
cmp %r8, %r8
movl $0x51525354, (%r10)
xor $24295, %r13

// Load
mov $0x23f51100000004ca, %r8
nop
nop
xor $23608, %rdx
movb (%r8), %r10b
nop
nop
nop
nop
nop
xor %rsi, %rsi

// Store
mov $0x7ba, %rsi
nop
nop
xor $36437, %rdx
mov $0x5152535455565758, %r13
movq %r13, %xmm3
vmovaps %ymm3, (%rsi)
add $49989, %rsi

// Faulty Load
mov $0x7899cd0000000eea, %r10
clflush (%r10)
xor %rdx, %rdx
mov (%r10), %r13d
lea oracles, %r10
and $0xff, %r13
shlq $12, %r13
mov (%r10,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': True, 'NT': True, 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'54': 159, '00': 15}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 54 54 00 54 54 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54
*/
