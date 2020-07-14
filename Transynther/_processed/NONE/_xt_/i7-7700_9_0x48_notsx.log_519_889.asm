.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xd37d, %rsi
lea addresses_D_ht+0xc3fd, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add $22990, %r10
mov $15, %rcx
rep movsw
nop
nop
nop
and %rbp, %rbp
lea addresses_A_ht+0x1eb7d, %rbp
add %r12, %r12
mov (%rbp), %rcx
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_A_ht+0x675d, %r12
nop
xor $14367, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
and $0xffffffffffffffc0, %r12
vmovaps %ymm2, (%r12)
nop
nop
nop
sub $18385, %r15
lea addresses_D_ht+0xae7d, %r15
clflush (%r15)
nop
add $49082, %rsi
movups (%r15), %xmm1
vpextrq $1, %xmm1, %rbp
nop
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0x3e7d, %r12
nop
nop
nop
sub %rsi, %rsi
mov (%r12), %cx
nop
nop
nop
and $14410, %rdi
lea addresses_D_ht+0xf37d, %rdi
nop
sub %r12, %r12
movb (%rdi), %cl
nop
nop
nop
nop
cmp $19149, %r12
lea addresses_WT_ht+0x2b7d, %r15
clflush (%r15)
nop
cmp %r10, %r10
vmovups (%r15), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
add %rsi, %rsi
lea addresses_D_ht+0x11f7d, %rsi
nop
nop
nop
nop
nop
cmp $15387, %r12
mov (%rsi), %r15d
nop
nop
cmp $5580, %rdi
lea addresses_UC_ht+0x1b043, %rcx
and $47148, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rcx)
cmp %rsi, %rsi
lea addresses_D_ht+0xeffd, %rsi
sub $23149, %rdi
vmovups (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r12
nop
nop
nop
nop
and $7656, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rax
push %rdi
push %rdx

// Store
lea addresses_WT+0x98fd, %rdx
nop
and %rax, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovaps %ymm4, (%rdx)
xor %r15, %r15

// Faulty Load
lea addresses_PSE+0x2b7d, %r15
sub %r8, %r8
mov (%r15), %r12
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WT', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 7}}
{'33': 519}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
