.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x113d2, %rsi
lea addresses_D_ht+0x13fd2, %rdi
nop
nop
nop
and $27069, %r15
mov $100, %rcx
rep movsl
nop
nop
sub $51120, %r9
lea addresses_normal_ht+0xe472, %rsi
lea addresses_WT_ht+0x1e132, %rdi
nop
nop
nop
nop
inc %r8
mov $92, %rcx
rep movsl
nop
sub $8871, %rdi
lea addresses_UC_ht+0x17152, %rdi
clflush (%rdi)
nop
nop
inc %r11
mov $0x6162636465666768, %r9
movq %r9, %xmm1
movups %xmm1, (%rdi)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x1af52, %r9
nop
dec %rcx
movb $0x61, (%r9)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x103d2, %r9
nop
xor %r8, %r8
mov $0x6162636465666768, %r11
movq %r11, (%r9)
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_D_ht+0x14e86, %r9
nop
nop
nop
xor $50145, %rcx
movb $0x61, (%r9)
add %r9, %r9
lea addresses_A_ht+0xa52, %r9
clflush (%r9)
nop
nop
nop
xor %rsi, %rsi
and $0xffffffffffffffc0, %r9
vmovaps (%r9), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
and %r15, %r15
lea addresses_A_ht+0x1850e, %r8
nop
nop
nop
nop
nop
sub %r9, %r9
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
nop
xor $57789, %rdi
lea addresses_WC_ht+0x113d2, %rsi
nop
nop
nop
nop
nop
add $13323, %r9
mov $0x6162636465666768, %r11
movq %r11, (%rsi)
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_UC_ht+0x16992, %rsi
lea addresses_WC_ht+0x13bd2, %rdi
sub $21816, %r13
mov $1, %rcx
rep movsq
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0xe7d2, %rsi
lea addresses_D_ht+0x8158, %rdi
nop
and %r9, %r9
mov $67, %rcx
rep movsw
nop
nop
and %r15, %r15
lea addresses_WC_ht+0x97d2, %r9
xor $46632, %rdi
and $0xffffffffffffffc0, %r9
vmovaps (%r9), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
nop
and %r15, %r15
lea addresses_A_ht+0x174b2, %r9
nop
nop
nop
inc %r15
movl $0x61626364, (%r9)
nop
nop
nop
mfence
lea addresses_A_ht+0x117d2, %rsi
nop
nop
dec %r11
vmovups (%rsi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r9
nop
dec %rdi
lea addresses_UC_ht+0xd3d2, %rsi
nop
nop
nop
and $4163, %rcx
movl $0x61626364, (%rsi)
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rbx
push %rcx
push %rdx

// Store
lea addresses_PSE+0x106d2, %r11
nop
nop
nop
nop
inc %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
movaps %xmm1, (%r11)
nop
nop
nop
cmp $53930, %rbx

// Store
lea addresses_WC+0x1ff92, %r14
nop
nop
nop
and %r9, %r9
movl $0x51525354, (%r14)
nop
nop
add %rcx, %rcx

// Faulty Load
lea addresses_PSE+0xfd2, %rbx
nop
nop
nop
nop
cmp $35398, %rcx
vmovups (%rbx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdx
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_PSE', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'33': 72}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
