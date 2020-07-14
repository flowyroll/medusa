.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1a13f, %rsi
lea addresses_D_ht+0x1213f, %rdi
nop
nop
nop
nop
nop
mfence
mov $6, %rcx
rep movsq
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x353f, %r13
nop
xor $51947, %rdx
vmovups (%r13), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0x19d3f, %rsi
lea addresses_WC_ht+0xf872, %rdi
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $77, %rcx
rep movsw
nop
nop
xor %rdx, %rdx
lea addresses_A_ht+0x2fbf, %r13
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
movups %xmm0, (%r13)
nop
nop
nop
nop
nop
cmp $52429, %r13
lea addresses_WT_ht+0x158df, %rsi
add %rcx, %rcx
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %r13
nop
nop
nop
nop
nop
xor $43236, %rdi
lea addresses_WC_ht+0x14cfb, %rdx
nop
nop
dec %rcx
movb (%rdx), %r8b
nop
and $4809, %rdx
lea addresses_A_ht+0x155ff, %rsi
lea addresses_D_ht+0x10fd, %rdi
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $78, %rcx
rep movsb
nop
and $31008, %r8
lea addresses_normal_ht+0x10cff, %rsi
lea addresses_WC_ht+0x1393f, %rdi
nop
nop
nop
dec %r12
mov $21, %rcx
rep movsq
nop
nop
nop
nop
cmp $13252, %r13
lea addresses_WT_ht+0x17e5f, %r12
nop
nop
nop
cmp $39580, %rdi
vmovups (%r12), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r10
and %rsi, %rsi
lea addresses_UC_ht+0x113f, %r12
clflush (%r12)
nop
nop
nop
cmp $1554, %r10
movl $0x61626364, (%r12)
nop
xor $59813, %r8
lea addresses_D_ht+0x1d15f, %rsi
lea addresses_D_ht+0xd0bf, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov $95, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $2129, %rcx
lea addresses_UC_ht+0x1a317, %rsi
lea addresses_A_ht+0x15d3f, %rdi
dec %r8
mov $15, %rcx
rep movsq
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0xf807, %rcx
nop
add $12469, %r12
mov (%rcx), %edi
nop
nop
nop
nop
sub %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rdx
push %rsi

// Load
lea addresses_normal+0x1463f, %rdx
nop
nop
nop
nop
add $50436, %r8
mov (%rdx), %esi
nop
nop
nop
and %rax, %rax

// Store
mov $0x46e6d0000000adf, %r9
clflush (%r9)
nop
nop
nop
xor $19364, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
movups %xmm7, (%r9)
nop
nop
nop
nop
nop
dec %rdx

// Store
lea addresses_US+0x129ef, %rcx
nop
inc %rsi
movw $0x5152, (%rcx)
nop
nop
sub %r12, %r12

// Store
lea addresses_PSE+0x1316f, %r9
nop
nop
nop
nop
nop
add %rcx, %rcx
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
add $50744, %rsi

// Store
lea addresses_D+0xb68f, %r12
xor %r8, %r8
movb $0x51, (%r12)
nop
nop
nop
nop
xor $55447, %rsi

// Store
lea addresses_A+0x10fd7, %rsi
nop
nop
nop
nop
nop
cmp %r12, %r12
movl $0x51525354, (%rsi)
nop
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_WC+0x14feb, %rax
nop
nop
nop
xor $49507, %r8
movb $0x51, (%rax)
nop
nop
nop
dec %rax

// Store
lea addresses_RW+0x122bf, %r9
nop
nop
inc %rsi
mov $0x5152535455565758, %rax
movq %rax, %xmm5
movups %xmm5, (%r9)
nop
nop
add %rdx, %rdx

// Faulty Load
lea addresses_US+0x853f, %r9
cmp %rax, %rax
mov (%r9), %esi
lea oracles, %r12
and $0xff, %rsi
shlq $12, %rsi
mov (%r12,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'00': 9, '10': 3}
00 00 00 00 10 00 10 00 00 00 00 10
*/
