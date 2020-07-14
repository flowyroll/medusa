.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xd9b2, %rsi
lea addresses_UC_ht+0x11432, %rdi
and %rbx, %rbx
mov $77, %rcx
rep movsb
nop
nop
nop
nop
add %r15, %r15
lea addresses_D_ht+0x1d552, %r15
nop
nop
nop
nop
nop
cmp $62591, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r15)
nop
dec %rcx
lea addresses_D_ht+0x4032, %rsi
lea addresses_normal_ht+0x4dea, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov $113, %rcx
rep movsb
nop
nop
inc %rbx
lea addresses_WC_ht+0x1a432, %rsi
lea addresses_UC_ht+0x10332, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
mfence
mov $21, %rcx
rep movsb
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x5032, %r15
nop
nop
inc %rax
mov (%r15), %ecx
nop
nop
xor $51153, %r15
lea addresses_D_ht+0x1460, %rcx
nop
nop
nop
nop
xor $51248, %r15
movl $0x61626364, (%rcx)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x16e52, %rsi
lea addresses_WC_ht+0x2af2, %rdi
nop
nop
sub %rax, %rax
mov $98, %rcx
rep movsq
add $9481, %r15
lea addresses_WC_ht+0xc032, %rsi
lea addresses_UC_ht+0x5032, %rdi
nop
nop
nop
nop
sub %rdx, %rdx
mov $37, %rcx
rep movsb
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0xa332, %rsi
lea addresses_WC_ht+0xbcb2, %rdi
clflush (%rsi)
nop
nop
nop
nop
add %rbx, %rbx
mov $62, %rcx
rep movsl
nop
nop
nop
nop
sub $25303, %r10
lea addresses_UC_ht+0x13b12, %rsi
nop
sub %r15, %r15
mov (%rsi), %ecx
nop
and %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rdi

// Store
lea addresses_D+0x11832, %r15
clflush (%r15)
nop
nop
nop
nop
nop
inc %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%r15)
nop
nop
and %r15, %r15

// Faulty Load
lea addresses_US+0x9032, %r8
nop
nop
nop
nop
inc %rax
movups (%r8), %xmm5
vpextrq $1, %xmm5, %rbp
lea oracles, %rax
and $0xff, %rbp
shlq $12, %rbp
mov (%rax,%rbp,1), %rbp
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'46': 1, '00': 8}
00 00 00 00 46 00 00 00 00
*/
