.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x13bbb, %rdi
nop
nop
nop
nop
xor %rbx, %rbx
movw $0x6162, (%rdi)
nop
nop
nop
nop
and $34997, %r12
lea addresses_UC_ht+0xb3bb, %rbx
xor %r13, %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%rbx)
nop
nop
nop
nop
nop
xor %r12, %r12
lea addresses_A_ht+0x1efbb, %r12
nop
inc %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%r12)
nop
add %rdi, %rdi
lea addresses_A_ht+0x10dbb, %r14
clflush (%r14)
cmp $37968, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, (%r14)
nop
nop
nop
sub %r10, %r10
lea addresses_UC_ht+0xaf3b, %r12
nop
nop
nop
nop
add $54310, %rsi
movb (%r12), %r10b
nop
nop
sub $18726, %r10
lea addresses_A_ht+0xf1bb, %rsi
nop
nop
nop
nop
xor %rdi, %rdi
movl $0x61626364, (%rsi)
nop
inc %rdi
lea addresses_A_ht+0xa41f, %r10
nop
and $39297, %r14
vmovups (%r10), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbx
nop
nop
sub %rbx, %rbx
lea addresses_D_ht+0x8fbb, %r14
nop
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm1
movups %xmm1, (%r14)
nop
nop
nop
cmp $57554, %rdi
lea addresses_A_ht+0x15877, %r10
nop
nop
nop
nop
cmp %rbx, %rbx
movl $0x61626364, (%r10)
and %rdi, %rdi
lea addresses_UC_ht+0x8bad, %rbx
nop
nop
nop
nop
nop
cmp $30863, %r10
mov (%rbx), %r12w
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x1c01b, %rsi
lea addresses_WT_ht+0x1517b, %rdi
inc %r12
mov $14, %rcx
rep movsw
nop
nop
nop
nop
xor $42529, %rdi
lea addresses_D_ht+0x127bb, %rsi
lea addresses_normal_ht+0xdaa7, %rdi
clflush (%rdi)
nop
nop
cmp %r14, %r14
mov $68, %rcx
rep movsb
nop
xor $55504, %r13
lea addresses_WT_ht+0x4465, %r12
nop
nop
nop
nop
mfence
mov (%r12), %si
nop
sub $40821, %r13
lea addresses_normal_ht+0x15a5b, %rsi
lea addresses_D_ht+0x63bb, %rdi
nop
nop
nop
add $28251, %rbx
mov $49, %rcx
rep movsl
cmp %rsi, %rsi
lea addresses_A_ht+0x129ab, %r14
nop
nop
add $50678, %r12
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
sub %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rax
push %rbx
push %rcx

// Store
lea addresses_normal+0x253b, %r12
clflush (%r12)
sub $7489, %r14
movl $0x51525354, (%r12)
nop
nop
add %rcx, %rcx

// Store
lea addresses_A+0x90c1, %r8
nop
nop
nop
nop
dec %rcx
movl $0x51525354, (%r8)

// Exception!!!
nop
nop
nop
nop
mov (0), %rax
nop
xor %rax, %rax

// Store
lea addresses_PSE+0x18bbb, %rax
nop
nop
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %rbx
movq %rbx, (%rax)
nop
nop
nop
nop
cmp %r8, %r8

// Faulty Load
lea addresses_WT+0x19bbb, %rbx
nop
nop
cmp $39561, %r11
movb (%rbx), %cl
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'39': 31}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
