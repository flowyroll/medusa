.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x12a07, %rax
nop
nop
xor %r9, %r9
movl $0x61626364, (%rax)
cmp %rdi, %rdi
lea addresses_UC_ht+0x1d3eb, %rsi
lea addresses_D_ht+0x1178b, %rdi
nop
nop
nop
nop
add $52980, %rax
mov $116, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $56654, %rdi
lea addresses_normal_ht+0x358b, %rsi
lea addresses_D_ht+0x86fb, %rdi
nop
nop
nop
nop
nop
and $51459, %r9
mov $48, %rcx
rep movsb
mfence
lea addresses_UC_ht+0xc38b, %rsi
nop
nop
nop
cmp $52046, %rdi
mov (%rsi), %ecx
nop
nop
inc %rsi
lea addresses_normal_ht+0x1a18b, %rsi
lea addresses_UC_ht+0x12c1b, %rdi
nop
nop
nop
nop
nop
xor $15022, %rbp
mov $75, %rcx
rep movsb
nop
nop
nop
nop
nop
add $26554, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rbp
push %rbx

// Load
lea addresses_normal+0x14930, %r14
nop
nop
nop
nop
dec %r8
mov (%r14), %bp
nop
nop
nop
nop
add %rbp, %rbp

// Load
lea addresses_WC+0xad8b, %r8
nop
nop
nop
xor $56231, %r10
vmovups (%r8), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r15
nop
xor %r10, %r10

// Store
lea addresses_D+0x8fcb, %rbx
nop
nop
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %r10
movq %r10, %xmm3
movups %xmm3, (%rbx)
cmp $36536, %r8

// Faulty Load
lea addresses_WC+0xad8b, %r10
nop
nop
nop
nop
and %r8, %r8
mov (%r10), %r15
lea oracles, %r10
and $0xff, %r15
shlq $12, %r15
mov (%r10,%r15,1), %r15
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'00': 140}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
