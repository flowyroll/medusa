.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x15eeb, %rsi
lea addresses_WT_ht+0x1adeb, %rdi
nop
nop
and $19177, %r12
mov $100, %rcx
rep movsw
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x12cab, %rsi
lea addresses_WC_ht+0x26eb, %rdi
dec %r12
mov $111, %rcx
rep movsb
nop
nop
nop
nop
xor %r10, %r10
lea addresses_D_ht+0x2cab, %r14
nop
nop
nop
nop
nop
sub $22833, %r10
mov (%r14), %cx
cmp $24978, %r10
lea addresses_WC_ht+0x16eeb, %rsi
lea addresses_normal_ht+0x191eb, %rdi
clflush (%rsi)
nop
nop
and $11139, %r10
mov $104, %rcx
rep movsq
nop
sub %rdi, %rdi
lea addresses_D_ht+0xd0a3, %rsi
clflush (%rsi)
nop
nop
sub $4085, %rbx
mov (%rsi), %rcx
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0x8c0b, %rsi
clflush (%rsi)
nop
and $51278, %r12
mov $0x6162636465666768, %r14
movq %r14, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_D_ht+0x111b3, %rbx
nop
nop
cmp %rsi, %rsi
movups (%rbx), %xmm3
vpextrq $0, %xmm3, %r12
nop
add %rdi, %rdi
lea addresses_D_ht+0x17fec, %rsi
lea addresses_A_ht+0x165eb, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %r8, %r8
mov $47, %rcx
rep movsl
nop
nop
add $3000, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r9
push %rax
push %rdx
push %rsi

// Store
lea addresses_WT+0xf303, %r14
xor $30704, %r15
movl $0x51525354, (%r14)
nop
sub $23797, %r14

// Store
lea addresses_WT+0x7ceb, %r12
nop
nop
nop
nop
dec %rax
mov $0x5152535455565758, %rdx
movq %rdx, (%r12)
nop
nop
nop
nop
add $27867, %rdx

// Store
lea addresses_WT+0x1c6eb, %r12
nop
nop
and %r9, %r9
mov $0x5152535455565758, %rdx
movq %rdx, (%r12)
nop
nop
and %rdx, %rdx

// Faulty Load
lea addresses_WT+0x1c6eb, %r12
nop
nop
nop
add $1011, %rdx
movntdqa (%r12), %xmm6
vpextrq $1, %xmm6, %rsi
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}}
{'01': 1, '48': 695, '00': 18757, '46': 2372, '47': 4}
00 00 00 00 00 00 46 00 00 00 00 46 00 46 00 46 00 00 00 46 00 00 00 00 46 00 00 00 00 00 48 00 00 00 00 46 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 46 48 00 00 46 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 46 00 48 00 00 00 00 46 00 00 00 00 00 46 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 48 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 48 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 48 00 00 00 46 00 00 00 00 00 00 46 00 00 46 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 48 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 46 48 00 00 00 00 48 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 48 00 00 00 00 00 00 00 46 00 00 48 00 00 46 46 00 00 46 00 00 00 48 00 00 00 00 46 00 00 00 46 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 48 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 46 46 00 00 00 46 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 46 46 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 48 00 46 00 00 00 00 00 00 46 46 00 00 00 00 00 46 00 00 00 00 48 00 00 00 00 00 46 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 46 00 00 00 48 00 46 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 46 00 46 00 46 00 46 00 00 00 00 00 00 00 46 00 00 00 46 00 00 46 00 48 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 46 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 46 00 00 48 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 48 00 00 00 00 00 46 00 48 00 00 00 00 00 00 00 00 00 00 48 46 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 48 46 00 46 00 00 00 46 00 00 00 46 00 46 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 46 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 48 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 48 00
*/
