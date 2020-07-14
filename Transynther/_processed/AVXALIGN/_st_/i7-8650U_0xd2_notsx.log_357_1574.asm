.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xb23d, %rsi
nop
and $38747, %r10
mov (%rsi), %rdi
nop
nop
nop
and $63129, %r14
lea addresses_D_ht+0x8155, %r8
nop
nop
nop
nop
add %rdx, %rdx
mov (%r8), %esi
nop
nop
nop
nop
add $50561, %r10
lea addresses_normal_ht+0x1a9f5, %r8
nop
nop
sub %r15, %r15
mov (%r8), %rsi
nop
nop
cmp $1417, %rsi
lea addresses_D_ht+0x95c7, %rdi
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
and %rdx, %rdx
lea addresses_D_ht+0xd975, %rdx
cmp %rdi, %rdi
movw $0x6162, (%rdx)
nop
nop
nop
nop
and $11641, %rdi
lea addresses_normal_ht+0x1c9f5, %r10
nop
nop
nop
nop
lfence
movb $0x61, (%r10)
nop
nop
dec %r15
lea addresses_UC_ht+0xd309, %rsi
lea addresses_D_ht+0x14d12, %rdi
nop
nop
xor $23592, %r8
mov $31, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0xe8f5, %rsi
lea addresses_UC_ht+0x79f5, %rdi
nop
nop
nop
nop
nop
dec %r15
mov $60, %rcx
rep movsb
dec %rdi
lea addresses_normal_ht+0x1b9f5, %rsi
lea addresses_A_ht+0x8f5, %rdi
nop
xor $64392, %rdx
mov $124, %rcx
rep movsb
nop
nop
add $32692, %r14
lea addresses_D_ht+0x1d775, %r14
nop
nop
nop
nop
nop
inc %rdx
and $0xffffffffffffffc0, %r14
vmovntdqa (%r14), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x1d735, %rdi
clflush (%rdi)
add %rsi, %rsi
mov (%rdi), %r8d
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0x319d, %r15
nop
nop
nop
nop
dec %r10
mov (%r15), %r8w
inc %r10
lea addresses_normal_ht+0x12025, %r14
nop
nop
sub $62835, %rdx
movl $0x61626364, (%r14)
nop
nop
nop
nop
cmp $58777, %r8
lea addresses_WT_ht+0x1b05d, %r10
clflush (%r10)
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm2
and $0xffffffffffffffc0, %r10
vmovaps %ymm2, (%r10)
nop
nop
add %rdx, %rdx
lea addresses_A_ht+0xb5f5, %rsi
lea addresses_normal_ht+0x185e3, %rdi
clflush (%rsi)
clflush (%rdi)
cmp $4148, %r14
mov $52, %rcx
rep movsl
nop
sub %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r9
push %rbx
push %rdi

// Load
lea addresses_RW+0x11055, %r9
nop
nop
nop
cmp $64725, %r12
vmovups (%r9), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r15
nop
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_RW+0x1af35, %r10
xor %rbx, %rbx
movl $0x51525354, (%r10)
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_UC+0x3ad5, %r12
nop
sub %r14, %r14
movl $0x51525354, (%r12)
nop
add $51815, %r14

// Faulty Load
lea addresses_PSE+0x139f5, %r14
add %r9, %r9
mov (%r14), %r15w
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'33': 357}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
