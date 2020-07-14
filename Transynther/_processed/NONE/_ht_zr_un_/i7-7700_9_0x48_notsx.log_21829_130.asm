.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xd6ac, %rsi
lea addresses_UC_ht+0x9d4, %rdi
nop
nop
nop
nop
and %r10, %r10
mov $72, %rcx
rep movsb
dec %rdx
lea addresses_D_ht+0xddc, %r15
nop
nop
nop
nop
dec %r12
mov (%r15), %edi
nop
nop
nop
nop
nop
add $39956, %rdx
lea addresses_WC_ht+0x186ac, %rdi
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, (%rdi)
nop
nop
and $48045, %rsi
lea addresses_WC_ht+0x80ec, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov (%rdi), %dx
nop
nop
nop
cmp $40223, %r12
lea addresses_normal_ht+0xe92c, %rdx
nop
nop
nop
nop
nop
xor $57053, %rcx
vmovups (%rdx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r12
nop
add $38164, %r15
lea addresses_WT_ht+0xdac, %rsi
clflush (%rsi)
nop
nop
add $9403, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rsi)
sub %rdx, %rdx
lea addresses_A_ht+0xf6ac, %r12
nop
add $57949, %rcx
movw $0x6162, (%r12)
nop
nop
nop
nop
add $62025, %r15
lea addresses_D_ht+0x1c898, %rcx
nop
nop
nop
nop
sub $56148, %r12
movb $0x61, (%rcx)
nop
nop
nop
nop
cmp $62283, %rdi
lea addresses_D_ht+0x5aac, %rdi
nop
nop
nop
cmp $63996, %r10
mov (%rdi), %si
nop
sub %r15, %r15
lea addresses_WC_ht+0x1952c, %rdi
nop
nop
nop
nop
add $31056, %r12
mov (%rdi), %cx
nop
inc %r12
lea addresses_A_ht+0xc6ac, %rcx
clflush (%rcx)
nop
nop
nop
nop
cmp $1215, %r15
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %rdx
and %rsi, %rsi
lea addresses_WT_ht+0x182ac, %rsi
lea addresses_A_ht+0x19fc2, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $61, %rcx
rep movsw
nop
add %rdi, %rdi
lea addresses_A_ht+0x186d2, %rsi
nop
nop
nop
nop
nop
cmp $13203, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
xor $45458, %rdi
lea addresses_UC_ht+0x1e88c, %rsi
lea addresses_WC_ht+0x17bcc, %rdi
clflush (%rdi)
nop
sub %r15, %r15
mov $2, %rcx
rep movsb
nop
nop
nop
sub $61369, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x17924, %rsi
lea addresses_UC+0xf5ac, %rdi
nop
cmp %rbx, %rbx
mov $88, %rcx
rep movsl
nop
nop
nop
xor $51651, %rdi

// Store
mov $0x21e53600000006ac, %rbx
nop
nop
nop
nop
cmp %rdi, %rdi
movb $0x51, (%rbx)
nop
nop
and $34531, %r10

// Store
lea addresses_D+0x1b504, %r15
nop
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %rbx
movq %rbx, (%r15)
nop
nop
dec %r15

// Faulty Load
lea addresses_A+0x196ac, %rcx
nop
nop
nop
nop
nop
inc %rbx
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdi
lea oracles, %r10
and $0xff, %rdi
shlq $12, %rdi
mov (%r10,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': True, 'congruent': 1, 'type': 'addresses_UC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 3}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 3}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 11}}
{'dst': {'same': True, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'40': 2, '49': 5, '00': 21819, '08': 1, '44': 1, '6c': 1}
00 6c 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
