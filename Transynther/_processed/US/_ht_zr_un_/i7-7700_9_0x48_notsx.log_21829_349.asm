.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1fa7, %rsi
lea addresses_D_ht+0x72e7, %rdi
nop
nop
and $65366, %rbx
mov $1, %rcx
rep movsw
nop
and $36076, %rcx
lea addresses_UC_ht+0x15047, %r12
nop
nop
nop
sub %rcx, %rcx
vmovups (%r12), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
nop
dec %rsi
lea addresses_A_ht+0x4e91, %rax
nop
nop
nop
nop
nop
xor %r8, %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
and $0xffffffffffffffc0, %rax
movaps %xmm2, (%rax)
nop
sub $14777, %rcx
lea addresses_normal_ht+0x1ac87, %rdi
nop
nop
nop
nop
and %r8, %r8
mov (%rdi), %rbx
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0xc722, %r12
xor $52333, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
and $0xffffffffffffffc0, %r12
movaps %xmm0, (%r12)
nop
nop
nop
nop
cmp $44068, %r8
lea addresses_normal_ht+0x156e7, %rcx
nop
nop
inc %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%rcx)
add %rbx, %rbx
lea addresses_UC_ht+0xd6e7, %rbx
cmp $26910, %r12
movups (%rbx), %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
dec %rsi
lea addresses_A_ht+0x6bab, %rsi
lea addresses_normal_ht+0x16deb, %rdi
nop
nop
nop
cmp $3679, %r10
mov $23, %rcx
rep movsl
nop
nop
nop
cmp $16587, %rax
lea addresses_UC_ht+0x1ea07, %rbx
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
and $0xffffffffffffffc0, %rbx
movaps %xmm5, (%rbx)
nop
nop
nop
dec %r12
lea addresses_UC_ht+0x92e7, %r12
nop
nop
nop
and $1419, %rsi
vmovups (%r12), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
and $26434, %rbx
lea addresses_UC_ht+0xcee7, %rsi
lea addresses_WT_ht+0x89e7, %rdi
nop
nop
nop
nop
nop
inc %r12
mov $117, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $61083, %rbx
lea addresses_normal_ht+0x175e7, %rsi
and $53523, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm3
and $0xffffffffffffffc0, %rsi
vmovaps %ymm3, (%rsi)
dec %rbx
lea addresses_WC_ht+0xb5e7, %rsi
nop
nop
lfence
movb $0x61, (%rsi)
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x18eeb, %r10
nop
nop
nop
nop
add $28186, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm6
movups %xmm6, (%r10)
inc %rax
lea addresses_WC_ht+0x1626f, %rdi
nop
nop
nop
add $48425, %rbx
mov (%rdi), %r10w
nop
nop
nop
nop
nop
xor $55209, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rax
push %rbp
push %rbx
push %rsi

// Store
lea addresses_RW+0x4717, %rsi
nop
nop
nop
nop
nop
xor %r11, %r11
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
nop
dec %rbx

// Store
lea addresses_US+0xc595, %r12
nop
nop
cmp %rax, %rax
movl $0x51525354, (%r12)
nop
nop
nop
nop
sub $24710, %rbx

// Load
lea addresses_PSE+0x19f87, %r11
nop
nop
nop
nop
nop
inc %rax
mov (%r11), %r10
nop
add $22502, %r11

// Faulty Load
lea addresses_US+0x14ee7, %r11
nop
xor %rbx, %rbx
vmovups (%r11), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': True, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 10}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'08': 5, '47': 5230, '72': 7, '00': 16587}
00 00 00 00 47 00 00 00 00 00 00 47 00 00 00 00 47 00 47 47 47 47 47 47 47 47 00 00 00 00 00 00 00 47 47 00 47 00 00 47 47 00 00 00 00 47 00 00 00 47 47 47 47 47 00 47 47 47 47 00 47 00 47 47 00 00 00 00 00 47 00 00 00 47 00 00 00 47 47 47 00 00 47 00 00 00 00 00 00 00 00 00 47 47 47 00 00 00 47 47 00 47 00 00 00 00 00 00 00 00 47 00 00 47 00 00 00 00 47 00 47 47 00 00 00 00 00 47 47 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 47 00 00 00 00 47 47 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 47 00 00 00 47 47 00 00 00 47 00 00 00 00 00 00 47 00 00 00 47 00 00 00 00 00 00 47 47 00 00 47 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 47 00 00 00 00 00 00 47 47 47 00 00 00 00 47 47 00 47 47 00 00 00 47 00 47 00 00 00 00 47 00 00 47 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 47 47 47 00 00 00 00 00 00 47 00 00 00 00 00 47 47 47 47 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 47 47 47 00 00 00 00 00 00 00 47 00 47 47 47 00 00 00 47 00 00 00 00 00 00 00 47 47 00 00 00 47 47 47 00 00 00 00 00 00 00 00 00 00 00 47 00 00 47 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 47 00 47 00 00 00 00 00 00 00 00 00 00 00 00 47 47 00 00 00 47 00 00 00 47 47 00 47 00 00 00 00 00 00 47 00 47 00 00 00 00 00 00 00 47 47 47 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 47 47 47 00 00 00 00 00 00 00 00 47 00 00 00 47 47 00 00 00 00 00 00 00 00 00 47 00 00 00 00 47 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 47 47 00 00 00 00 00 00 00 00 00 00 47 47 00 47 00 00 00 00 47 00 00 47 47 47 00 00 00 00 00 00 00 00 47 47 00 00 00 47 47 47 47 00 00 00 00 00 00 47 00 47 00 47 00 47 00 47 00 00 00 47 00 00 00 47 47 00 47 00 00 00 47 00 00 47 00 00 00 00 00 00 47 00 00 47 00 00 00 00 47 47 00 00 47 00 00 00 00 47 00 00 00 00 00 00 47 47 47 47 47 47 00 47 47 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 47 47 00 00 00 00 00 47 00 00 47 00 00 00 00 00 00 47 00 00 00 00 00 00 00 47 00 00 47 47 47 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 47 47 47 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 47 00 47 00 47 00 47 47 47 00 00 00 00 00 00 00 00 00 00 00 47 47 00 00 00 00 00 00 47 00 00 00 00 47 00 00 00 47 47 47 47 00 00 47 00 00 00 47 00 47 00 47 00 00 00 47 47 47 00 47 00 00 00 47 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 47 47 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 47 00 47 00 00 00 47 47 47 47 47 47 47 00 00 00 47 00 00 00 47 00 00 00 00 47 00 00 00 00 00 47 47 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 47 00 00 00 00 00 00 47 47 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 47 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
