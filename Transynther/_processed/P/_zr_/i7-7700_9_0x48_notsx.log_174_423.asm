.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xae6d, %rsi
lea addresses_A_ht+0xba6d, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $38418, %rbx
mov $30, %rcx
rep movsb
nop
nop
nop
cmp $46584, %r9
lea addresses_D_ht+0x12e75, %r9
nop
nop
nop
nop
dec %r13
vmovups (%r9), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbx
sub $51394, %rbx
lea addresses_normal_ht+0x1e66d, %rcx
nop
xor $54104, %r14
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
and $24925, %rcx
lea addresses_UC_ht+0x1eed, %rcx
nop
nop
nop
nop
nop
cmp $32847, %r13
movw $0x6162, (%rcx)
nop
nop
nop
nop
sub %r9, %r9
lea addresses_UC_ht+0x6ced, %rbx
nop
nop
nop
nop
cmp $26578, %rsi
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
sub $60755, %rbx
lea addresses_D_ht+0x2f67, %r9
xor %rdi, %rdi
and $0xffffffffffffffc0, %r9
vmovntdqa (%r9), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r13
sub $48797, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rsi

// Store
lea addresses_WT+0x1636d, %r12
nop
sub %r9, %r9
mov $0x5152535455565758, %rax
movq %rax, (%r12)
nop
nop
nop
nop
inc %rbp

// Faulty Load
mov $0xb6d, %rcx
nop
nop
add $59743, %r12
mov (%rcx), %ebp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_P', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 10}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_P', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 0}}
{'00': 174}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
