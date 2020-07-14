.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %r9
push %rbp
lea addresses_normal_ht+0xa967, %r15
clflush (%r15)
nop
nop
nop
cmp $16056, %r10
mov $0x6162636465666768, %rbp
movq %rbp, (%r15)
nop
add $6336, %r9
lea addresses_D_ht+0x936b, %rbp
nop
nop
nop
inc %r13
movb $0x61, (%rbp)
nop
nop
nop
xor %r15, %r15
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x3aaf, %rcx
sub %rdx, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, (%rcx)
nop
sub $53748, %rdx

// Store
lea addresses_normal+0x26f, %r15
nop
nop
sub $48208, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, (%r15)
nop
cmp %r8, %r8

// REPMOV
lea addresses_D+0x168df, %rsi
lea addresses_PSE+0x17aaf, %rdi
nop
nop
xor %rbp, %rbp
mov $103, %rcx
rep movsb
nop
sub $14043, %rbp

// Store
lea addresses_normal+0x1caf, %r12
nop
xor %rbp, %rbp
movl $0x51525354, (%r12)
nop
dec %rdi

// Store
lea addresses_UC+0x7b1f, %rsi
nop
dec %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
movups %xmm3, (%rsi)
cmp $51564, %r8

// Faulty Load
lea addresses_PSE+0x17aaf, %rdi
nop
nop
nop
add %r8, %r8
vmovntdqa (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdx
lea oracles, %r8
and $0xff, %rdx
shlq $12, %rdx
mov (%r8,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 2}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 2}, 'OP': 'STOR'}
{'00': 30}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
