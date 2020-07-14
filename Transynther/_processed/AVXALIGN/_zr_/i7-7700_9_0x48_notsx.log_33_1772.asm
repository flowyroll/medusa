.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1e3de, %rsi
lea addresses_A_ht+0x1b6de, %rdi
nop
nop
nop
xor $43873, %r15
mov $18, %rcx
rep movsl
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_normal_ht+0x2de, %r10
nop
nop
nop
nop
nop
dec %r13
movw $0x6162, (%r10)
nop
nop
nop
nop
dec %r10
lea addresses_normal_ht+0x1a35e, %rcx
nop
nop
nop
nop
nop
sub %rsi, %rsi
vmovups (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rax
nop
nop
nop
nop
nop
and $8324, %r15
lea addresses_normal_ht+0xa71e, %rsi
nop
nop
nop
xor $13419, %r13
mov $0x6162636465666768, %rax
movq %rax, (%rsi)
cmp %rcx, %rcx
lea addresses_normal_ht+0xe7de, %rsi
lea addresses_normal_ht+0xa06e, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
sub %r10, %r10
mov $32, %rcx
rep movsq
nop
nop
nop
add %r10, %r10
lea addresses_D_ht+0x13dde, %r13
nop
sub %rsi, %rsi
movb $0x61, (%r13)
inc %rdi
lea addresses_A_ht+0xedde, %r13
nop
nop
cmp %r15, %r15
mov (%r13), %rdi
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x1b830, %rsi
clflush (%rsi)
nop
nop
cmp $10191, %rcx
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x155de, %r15
cmp %r13, %r13
movups (%r15), %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
cmp %r10, %r10
lea addresses_WT_ht+0xb698, %rcx
clflush (%rcx)
nop
nop
nop
xor $63764, %rdi
mov (%rcx), %r15w
nop
nop
sub $7075, %rcx
lea addresses_normal_ht+0x10b8, %rsi
lea addresses_A_ht+0xb01e, %rdi
nop
nop
nop
nop
nop
xor $33637, %rax
mov $63, %rcx
rep movsw
nop
nop
dec %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx

// Store
mov $0x2c796100000008de, %rax
nop
xor %rbx, %rbx
movb $0x51, (%rax)
nop
nop
nop
sub $13592, %rcx

// Load
lea addresses_normal+0x53fe, %r14
cmp $2998, %rdi
mov (%r14), %edx
nop
nop
nop
xor $58331, %r10

// Store
lea addresses_UC+0x14d0, %rcx
clflush (%rcx)
nop
nop
cmp $12303, %rbx
mov $0x5152535455565758, %r14
movq %r14, (%rcx)

// Exception!!!
mov (0), %rcx
nop
nop
nop
nop
nop
and $22245, %rdx

// Load
lea addresses_WT+0x332e, %r10
nop
nop
nop
sub %rdi, %rdi
mov (%r10), %bx
nop
nop
nop
nop
nop
sub $63671, %rdx

// Faulty Load
lea addresses_A+0xe5de, %rcx
nop
nop
nop
nop
nop
inc %r10
mov (%rcx), %edi
lea oracles, %r10
and $0xff, %rdi
shlq $12, %rdi
mov (%r10,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_NC', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 2, 'type': 'addresses_WT', 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': True, 'size': 4, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'00': 33}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
