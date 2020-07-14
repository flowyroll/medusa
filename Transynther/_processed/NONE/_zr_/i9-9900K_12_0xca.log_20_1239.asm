.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1a6af, %rdx
nop
and $15632, %r9
movl $0x61626364, (%rdx)
nop
nop
nop
cmp $35933, %rbx
lea addresses_D_ht+0x865f, %rsi
lea addresses_normal_ht+0x1e25f, %rdi
clflush (%rdi)
nop
nop
and %r14, %r14
mov $20, %rcx
rep movsb
and %r9, %r9
lea addresses_D_ht+0x65f, %rsi
lea addresses_WC_ht+0xa11, %rdi
clflush (%rsi)
nop
nop
and %r15, %r15
mov $78, %rcx
rep movsq
nop
nop
nop
cmp $58108, %rdi
lea addresses_WC_ht+0x161f, %rsi
sub $36255, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0x1231f, %rdx
nop
nop
nop
nop
nop
add $32487, %r14
movl $0x61626364, (%rdx)
nop
and %rdx, %rdx
lea addresses_D_ht+0x1495f, %rsi
nop
xor $50000, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%rsi)
dec %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x60df, %rsi
lea addresses_D+0x25f, %rdi
nop
nop
nop
nop
sub %r8, %r8
mov $64, %rcx
rep movsb
nop
nop
inc %r8

// Store
lea addresses_US+0x85ff, %rcx
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
sub %rsi, %rsi

// Faulty Load
lea addresses_D+0x25f, %rbx
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov (%rbx), %ebp
lea oracles, %r8
and $0xff, %rbp
shlq $12, %rbp
mov (%r8,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A', 'congruent': 7}, 'dst': {'same': True, 'type': 'addresses_D', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': True, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'00': 20}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
