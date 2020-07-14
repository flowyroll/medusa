.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x12e50, %r12
nop
nop
nop
nop
cmp %r15, %r15
mov (%r12), %r10
nop
nop
and %rbx, %rbx
lea addresses_WT_ht+0xc4b4, %rsi
lea addresses_WT_ht+0xc0b4, %rdi
nop
nop
cmp $40559, %r9
mov $85, %rcx
rep movsw
nop
nop
sub %rbx, %rbx
lea addresses_WC_ht+0xdee4, %rcx
nop
nop
and $29754, %r9
movb (%rcx), %bl
nop
nop
inc %rcx
lea addresses_normal_ht+0xe734, %rdi
nop
sub $11487, %rsi
mov $0x6162636465666768, %r15
movq %r15, (%rdi)
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0xaff4, %r9
clflush (%r9)
nop
nop
nop
and $10194, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm0
vmovups %ymm0, (%r9)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x4954, %rsi
lea addresses_D_ht+0x15c54, %rdi
nop
nop
nop
add $22182, %r9
mov $41, %rcx
rep movsw
nop
nop
nop
nop
cmp $1084, %r12
lea addresses_D_ht+0x4bf8, %rsi
lea addresses_UC_ht+0x6ce4, %rdi
dec %r15
mov $58, %rcx
rep movsw
nop
nop
nop
and %r15, %r15
lea addresses_UC_ht+0x11bb4, %rsi
lea addresses_D_ht+0x7ab4, %rdi
nop
inc %r12
mov $126, %rcx
rep movsq
sub %r10, %r10
lea addresses_UC_ht+0x18e2c, %r10
nop
nop
add $9059, %rcx
movb $0x61, (%r10)
nop
nop
cmp %r9, %r9
lea addresses_normal_ht+0x1ad74, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov (%rcx), %r15
nop
cmp $54695, %r10
lea addresses_WC_ht+0x1214, %rdi
nop
nop
nop
sub $33071, %rbx
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %r15
nop
nop
sub $48958, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rax
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x108b4, %rdx
nop
nop
add $37192, %rax
movw $0x5152, (%rdx)
nop
nop
nop
dec %r14

// Store
lea addresses_normal+0x19634, %rdi
nop
nop
cmp %r10, %r10
movl $0x51525354, (%rdi)
nop
nop
nop
dec %rax

// Faulty Load
lea addresses_WC+0x108b4, %r14
nop
add $23115, %rdi
mov (%r14), %si
lea oracles, %r8
and $0xff, %rsi
shlq $12, %rsi
mov (%r8,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_WC', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'52': 21829}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
