.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x17d55, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $11464, %r11
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
and %rax, %rax
lea addresses_D_ht+0x2dcb, %rbx
nop
nop
nop
nop
dec %rdi
movl $0x61626364, (%rbx)
nop
nop
nop
nop
add %rax, %rax
lea addresses_normal_ht+0x1b24b, %r8
nop
nop
xor $64978, %r9
mov $0x6162636465666768, %rax
movq %rax, %xmm2
vmovups %ymm2, (%r8)
nop
nop
nop
nop
nop
dec %rbx
lea addresses_D_ht+0xdc0e, %rsi
lea addresses_WT_ht+0x142cb, %rdi
nop
nop
sub %r11, %r11
mov $23, %rcx
rep movsl
nop
nop
nop
nop
dec %rax
lea addresses_UC_ht+0x179a3, %rdi
nop
cmp $16088, %rax
mov (%rdi), %bx
nop
sub $30338, %rdi
lea addresses_A_ht+0x7d53, %rdi
nop
nop
nop
nop
inc %rcx
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm6
vpextrq $0, %xmm6, %rax
nop
nop
sub $16021, %r11
lea addresses_D_ht+0x14dcb, %r8
nop
nop
nop
nop
dec %rbx
movl $0x61626364, (%r8)
and $35864, %rbx
lea addresses_D_ht+0x19acb, %rax
nop
nop
nop
nop
nop
xor $6914, %r8
movb (%rax), %r9b
nop
dec %rax
lea addresses_A_ht+0x1dfcb, %rax
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0xee95, %rcx
nop
nop
nop
xor $62212, %r11
movb $0x61, (%rcx)
nop
nop
nop
nop
xor $2364, %r11
lea addresses_UC_ht+0x11ccb, %rsi
lea addresses_normal_ht+0xbc7, %rdi
nop
cmp $50808, %r9
mov $10, %rcx
rep movsw
nop
nop
nop
nop
nop
and $5355, %r8
lea addresses_WT_ht+0x1802b, %rax
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
and $0xffffffffffffffc0, %rax
movaps %xmm6, (%rax)
nop
nop
nop
cmp %r8, %r8
lea addresses_UC_ht+0x92cb, %rbx
xor $57290, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%rbx)
nop
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_US+0xe0ab, %rsi
lea addresses_US+0x1e18b, %rdi
nop
dec %r9
mov $72, %rcx
rep movsb
nop
nop
xor %rdi, %rdi

// Store
lea addresses_UC+0xe4cb, %r10
nop
nop
nop
nop
add %rcx, %rcx
movw $0x5152, (%r10)
nop
nop
nop
and %rdx, %rdx

// Faulty Load
lea addresses_D+0x14acb, %rdx
nop
nop
and $29656, %rbx
movups (%rdx), %xmm0
vpextrq $1, %xmm0, %r10
lea oracles, %rsi
and $0xff, %r10
shlq $12, %r10
mov (%rsi,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_US'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_US'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 3}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
