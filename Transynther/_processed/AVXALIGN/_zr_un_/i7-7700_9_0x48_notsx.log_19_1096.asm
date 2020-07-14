.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rax
push %rbx
push %rdi
push %rdx

// Store
lea addresses_UC+0x1182f, %rbx
clflush (%rbx)
nop
nop
nop
nop
add $31037, %rax
movb $0x51, (%rbx)
nop
nop
nop
nop
and %r9, %r9

// Store
lea addresses_WT+0x10e0, %rbx
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%rbx)
cmp %rdi, %rdi

// Store
lea addresses_RW+0x1f1af, %rax
mfence
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
sub $13939, %rdi

// Load
lea addresses_UC+0xe7af, %r11
nop
nop
nop
and %r9, %r9
mov (%r11), %r15w
nop
nop
xor $13568, %rbx

// Load
lea addresses_PSE+0x1d4ef, %rax
nop
nop
nop
sub %rdi, %rdi
vmovups (%rax), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbx
nop
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_UC+0xe7af, %r11
nop
nop
nop
xor $29757, %rdi
movl $0x51525354, (%r11)
nop
xor $26993, %rbx

// Store
lea addresses_UC+0xe7af, %r9
nop
nop
nop
nop
nop
cmp $62983, %rax
mov $0x5152535455565758, %r15
movq %r15, (%r9)
nop
nop
nop
add %r11, %r11

// Store
lea addresses_PSE+0xbbcf, %r9
nop
nop
nop
and $63887, %rbx
movl $0x51525354, (%r9)
nop
nop
nop
nop
add $14205, %rbx

// Faulty Load
lea addresses_UC+0xe7af, %r11
nop
nop
cmp $42513, %rdx
movaps (%r11), %xmm6
vpextrq $1, %xmm6, %r9
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 4}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_PSE', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_UC', 'congruent': 0}}
<gen_prepare_buffer>
{'08': 1, '00': 18}
00 00 00 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
