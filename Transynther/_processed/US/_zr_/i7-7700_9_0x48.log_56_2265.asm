.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x9747, %r13
nop
nop
nop
nop
nop
and %r14, %r14
movb $0x61, (%r13)
add %r8, %r8
lea addresses_A_ht+0x138eb, %rcx
clflush (%rcx)
nop
nop
nop
nop
cmp $3770, %r13
movb $0x61, (%rcx)
nop
xor %r8, %r8
lea addresses_normal_ht+0x2347, %rcx
nop
nop
nop
and $52422, %r10
movups (%rcx), %xmm7
vpextrq $0, %xmm7, %rdx
nop
nop
nop
xor $40869, %rcx
lea addresses_UC_ht+0x11017, %rsi
lea addresses_UC_ht+0x6797, %rdi
nop
nop
nop
nop
nop
sub %r8, %r8
mov $54, %rcx
rep movsq
add $7630, %rsi
lea addresses_normal_ht+0x6217, %rdx
nop
nop
nop
nop
and $42874, %rcx
movl $0x61626364, (%rdx)
nop
nop
xor $28723, %rdi
lea addresses_UC_ht+0x8517, %rdx
nop
nop
cmp $54019, %rsi
mov $0x6162636465666768, %r8
movq %r8, (%rdx)
nop
nop
nop
lfence
lea addresses_A_ht+0x6317, %rsi
lea addresses_WT_ht+0x15647, %rdi
nop
and %r10, %r10
mov $8, %rcx
rep movsb
nop
nop
nop
nop
sub $45303, %r10
lea addresses_UC_ht+0x7cb7, %rdx
nop
nop
nop
nop
nop
and %r8, %r8
mov (%rdx), %cx
nop
xor %r10, %r10
lea addresses_WT_ht+0x17797, %r8
nop
inc %r13
movw $0x6162, (%r8)
nop
nop
add $32053, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rax
push %rdi
push %rsi

// Load
lea addresses_US+0x1e117, %r10
nop
nop
nop
lfence
mov (%r10), %ax
nop
nop
nop
sub $50472, %r14

// Load
lea addresses_D+0xdc97, %rdi
nop
nop
nop
xor %r12, %r12
mov (%rdi), %r14
cmp %r14, %r14

// Faulty Load
lea addresses_US+0xa417, %r12
nop
nop
xor %r10, %r10
mov (%r12), %rax
lea oracles, %rsi
and $0xff, %rax
shlq $12, %rax
mov (%rsi,%rax,1), %rax
pop %rsi
pop %rdi
pop %rax
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': True}}
{'00': 56}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
