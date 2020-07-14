.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x103a, %rsi
lea addresses_normal_ht+0x840, %rdi
nop
nop
nop
nop
sub %r9, %r9
mov $123, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $33230, %rbp
lea addresses_UC_ht+0x3f8a, %rsi
lea addresses_WT_ht+0x1b0fa, %rdi
nop
and $61576, %r9
mov $72, %rcx
rep movsb
nop
nop
nop
nop
add $60229, %rcx
lea addresses_WC_ht+0x1179a, %rsi
lea addresses_normal_ht+0xcef2, %rdi
nop
nop
nop
xor %r15, %r15
mov $96, %rcx
rep movsb
nop
nop
nop
nop
dec %rdi
lea addresses_D_ht+0xe37a, %rsi
lea addresses_UC_ht+0x4dc6, %rdi
nop
nop
nop
and $11200, %r9
mov $54, %rcx
rep movsb
nop
nop
sub $52687, %rbp
lea addresses_normal_ht+0x3dba, %rsi
nop
nop
nop
nop
add %r9, %r9
movups (%rsi), %xmm5
vpextrq $1, %xmm5, %rdi
nop
and $3022, %r9
lea addresses_UC_ht+0x2dba, %rcx
clflush (%rcx)
nop
nop
nop
nop
and $31584, %rsi
movl $0x61626364, (%rcx)
nop
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x1831a, %r15
nop
nop
xor $7140, %r13
movw $0x6162, (%r15)
nop
nop
nop
nop
and $14601, %r13
lea addresses_UC_ht+0xbf5a, %r15
nop
add $25192, %r13
mov $0x6162636465666768, %rcx
movq %rcx, (%r15)
nop
xor %rbp, %rbp
lea addresses_D_ht+0x623a, %rdi
nop
nop
sub %rcx, %rcx
movups (%rdi), %xmm0
vpextrq $0, %xmm0, %r15
and %rdi, %rdi
lea addresses_normal_ht+0x3d32, %rsi
lea addresses_normal_ht+0xe9a2, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor %r14, %r14
mov $5, %rcx
rep movsl
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_normal_ht+0xe4ec, %r14
nop
and %rcx, %rcx
mov (%r14), %edi
nop
nop
nop
nop
nop
cmp $15000, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x17e5a, %rsi
lea addresses_normal+0xadba, %rdi
nop
nop
and %r13, %r13
mov $48, %rcx
rep movsw
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_normal+0xb8ba, %r15
nop
sub $32179, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r15)
sub %r15, %r15

// Load
mov $0x42d67f000000097a, %r13
nop
nop
nop
xor $55820, %rsi
mov (%r13), %rbx
nop
nop
nop
nop
sub $4770, %rbx

// Faulty Load
lea addresses_UC+0x12dba, %r12
clflush (%r12)
nop
nop
nop
and $11396, %r15
mov (%r12), %esi
lea oracles, %r15
and $0xff, %rsi
shlq $12, %rsi
mov (%r15,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'36': 2999, '00': 18830}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 36 00 00 36 36 36 00 00 00 00 00 00 00 36 00 00 00 36 00 00 00 00 00 00 00 00 00 36 36 36 00 00 00 36 00 36 00 00 00 00 00 36 36 00 00 00 00 00 00 36 00 00 36 36 00 00 00 00 00 36 36 36 00 00 36 36 36 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 36 36 00 00 00 00 00 00 00 36 00 00 00 00 00 00 00 00 00 00 00 00 36 00 00 00 36 36 00 00 36 00 36 00 36 36 36 36 00 00 00 36 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 36 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 36 00 00 00 36 36 00 36 00 00 36 00 36 00 36 00 36 00 00 00 00 00 36 00 00 00 00 00 36 00 36 00 00 00 00 00 36 36 00 00 00 00 36 00 36 00 00 36 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 36 00 00 00 00 00 00 00 36 00 00 36 00 00 00 00 00 36 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 36 00 36 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 36 00 00 00 00 00 00 36 36 00 00 00 00 00 00 00 00 00 00 00 00 00 36 00 00 00 00 00 00 36 00 36 00 00 00 00 00 00 00 00 00 00 00 36 00 00 00 00 00 00 00 00 00 00 00 00 00 00 36 36 36 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 36 00 00 00 00 00 00 36 00 00 00 00 36 36 00 00 00 00 00 00 00 00 00 36 36 00 00 00 36 36 00 00 00 00 00 00 00 00 36 00 00 00 00 00 00 36 00 00 00 00 00 36 00 00 00 00 36 00 00 36 00 00 00 00 36 00 00 00 00 00 00 00 00 36 00 36 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 36 00 36 36 00 00 00 00 36 00 00 00 00 00 00 00 00 00 00 00 00 36 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 36 00 36 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 36 00 00 00 00 36 00 00 00 00 00 00 00 00 00 00 00 00 00 36 36 00 00 36 00 00 00 36 00 36 36 00 00 00 36 00 00 00 00 00 00 00 36 36 00 00 00 00 00 00 00 00 00 00 00 36 00 00 00 00 00 00 00 36 00 00 00 00 00 36 00 00 00 00 36 00 00 00 36 00 00 00 00 00 00 00 00 00 36 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 36 00 00 00 00 36 00 00 00 00 00 36 00 00 36 00 00 00 00 00 00 00 00 00 00 00 36 00 00 00 00 00 00 00 36 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 36 00 00 00 00 00 00 00 00 36 00 00 00 36 36 36 00 00 00 36 00 00 00 36 00 00 00 00 00 36 00 00 00 00 00 00 00 00 36 00 00 00 00 00 36 00 00 00 36 00 00 00 36 00 00 00 36 00 00 00 00 00 00 00 00 00 00 00 36 00 36 00 00 00 36 00 00 00 36 00 00 36 36 00 00 00 00 36 00 00 00 00 36 00 00 36 00 00 00 00 00 00 00 00 36 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 36 36 00 00 36 36 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
