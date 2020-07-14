.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x11e59, %rsi
lea addresses_WT_ht+0x1759, %rdi
nop
nop
inc %rbx
mov $98, %rcx
rep movsw
nop
nop
nop
sub $2245, %rbp
lea addresses_WT_ht+0x117f9, %r15
nop
dec %r9
movw $0x6162, (%r15)
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x19139, %rsi
lea addresses_WT_ht+0xc659, %rdi
nop
nop
nop
nop
sub $50773, %rax
mov $62, %rcx
rep movsb
nop
nop
xor $64808, %rsi
lea addresses_normal_ht+0x1b2d9, %rdi
clflush (%rdi)
nop
and %r9, %r9
mov $0x6162636465666768, %r15
movq %r15, %xmm0
movups %xmm0, (%rdi)
nop
add %r9, %r9
lea addresses_normal_ht+0x583d, %rsi
lea addresses_A_ht+0x19759, %rdi
clflush (%rsi)
add $44736, %r9
mov $33, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_WT_ht+0x14799, %r15
add %rax, %rax
mov (%r15), %r9w
nop
nop
inc %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
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
push %rbp
push %rdi

// Faulty Load
mov $0xa59, %r10
nop
nop
nop
nop
nop
dec %rdi
movups (%r10), %xmm3
vpextrq $1, %xmm3, %rbp
lea oracles, %rdi
and $0xff, %rbp
shlq $12, %rbp
mov (%rdi,%rbp,1), %rbp
pop %rdi
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_P', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'ff': 2}
ff ff
*/
