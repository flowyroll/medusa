.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xe5f2, %rsi
lea addresses_UC_ht+0x9df2, %rdi
nop
and $769, %rax
mov $84, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $47958, %r9
lea addresses_D_ht+0x145f2, %rsi
lea addresses_WT_ht+0x13892, %rdi
nop
nop
and %r14, %r14
mov $124, %rcx
rep movsq
nop
nop
add $54365, %rax
lea addresses_normal_ht+0x7d7e, %rsi
lea addresses_normal_ht+0x1eb52, %rdi
nop
nop
and $10611, %rax
mov $49, %rcx
rep movsw
nop
xor %rdi, %rdi
lea addresses_A_ht+0xbdf2, %rsi
nop
nop
nop
nop
nop
inc %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
and $0xffffffffffffffc0, %rsi
vmovaps %ymm7, (%rsi)
sub $41407, %r10
lea addresses_WC_ht+0x13ff2, %rdi
nop
xor %r14, %r14
mov (%rdi), %r9w
nop
and %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r9
push %rbp
push %rbx

// Store
mov $0x7657610000000d15, %r9
clflush (%r9)
xor $16315, %r12
movw $0x5152, (%r9)

// Exception!!!
nop
nop
nop
mov (0), %rbx
nop
nop
sub $58274, %rbx

// Store
lea addresses_A+0x1e3f2, %rbp
dec %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm5
vmovups %ymm5, (%rbp)
nop
nop
nop
nop
nop
cmp $28539, %r9

// Store
mov $0x494d380000000afa, %r9
nop
nop
add %r15, %r15
movl $0x51525354, (%r9)
nop
nop
cmp %r15, %r15

// Store
lea addresses_WT+0x123dc, %r14
cmp $6004, %rbx
movw $0x5152, (%r14)
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_WT+0x16652, %r14
nop
nop
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %r9
movq %r9, (%r14)
nop
nop
inc %r14

// Faulty Load
lea addresses_A+0x1bdf2, %rbx
sub %r15, %r15
mov (%rbx), %r14d
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'00': 13}
00 00 00 00 00 00 00 00 00 00 00 00 00
*/
