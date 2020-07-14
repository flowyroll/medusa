.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x190ec, %r10
nop
nop
sub $7005, %r15
movl $0x61626364, (%r10)
nop
nop
dec %r9
lea addresses_normal_ht+0x54f4, %r14
nop
nop
and %r10, %r10
movb $0x61, (%r14)
cmp $27289, %r10
lea addresses_D_ht+0x636c, %rsi
lea addresses_UC_ht+0x5e24, %rdi
sub %r9, %r9
mov $46, %rcx
rep movsw
sub %rsi, %rsi
lea addresses_normal_ht+0x181ec, %r9
add $30912, %r15
movb $0x61, (%r9)
nop
nop
and %r14, %r14
lea addresses_WC_ht+0x1a56c, %r15
nop
nop
sub $18754, %r14
vmovups (%r15), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r9
sub $38944, %rcx
lea addresses_UC_ht+0x19e53, %r9
nop
nop
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %rcx
movq %rcx, (%r9)
nop
nop
cmp %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_US+0x12a2c, %r9
inc %rdx
mov (%r9), %ecx
nop
sub %r9, %r9

// REPMOV
lea addresses_D+0xe6cc, %rsi
lea addresses_normal+0xcf38, %rdi
cmp $47555, %r15
mov $10, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $35061, %rdi

// Load
lea addresses_WC+0x10a6c, %r15
nop
nop
nop
nop
add $47972, %rdi
movb (%r15), %cl
sub $32169, %r13

// Store
lea addresses_RW+0xeb6c, %r9
nop
nop
nop
nop
xor $43141, %rdx
movw $0x5152, (%r9)
nop
nop
inc %rsi

// Faulty Load
lea addresses_A+0x1456c, %r9
nop
nop
nop
sub %rdi, %rdi
mov (%r9), %r15
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_A', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 6}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 9}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'00': 6}
00 00 00 00 00 00
*/
