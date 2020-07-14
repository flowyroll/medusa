.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xb0cc, %rdi
clflush (%rdi)
sub %r11, %r11
vmovups (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r15
nop
nop
nop
nop
nop
add $1386, %r9
lea addresses_UC_ht+0x1424c, %rbp
nop
inc %rax
mov (%rbp), %r11
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x18cc, %rax
add %rbx, %rbx
movups (%rax), %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
add $27997, %r9
lea addresses_normal_ht+0xbecc, %rsi
lea addresses_UC_ht+0x68cc, %rdi
nop
nop
dec %rax
mov $2, %rcx
rep movsl
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x128cc, %r9
nop
cmp $51780, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r9)
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x7ccc, %rsi
cmp $57465, %rbx
mov $0x6162636465666768, %rax
movq %rax, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0x14288, %rsi
lea addresses_UC_ht+0xdecc, %rdi
and $61489, %rbx
mov $85, %rcx
rep movsw
nop
dec %rdi
lea addresses_normal_ht+0x238c, %rsi
lea addresses_WC_ht+0x91c, %rdi
clflush (%rdi)
nop
nop
and $62873, %r9
mov $53, %rcx
rep movsl
nop
cmp $16685, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_D+0x132ac, %rax
nop
nop
nop
sub $54583, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rax)
nop
nop
and %rdi, %rdi

// Faulty Load
lea addresses_US+0xe8cc, %rbx
nop
nop
add $40978, %r9
vmovups (%rbx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'dst': {'same': True, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'00': 2}
00 00
*/
