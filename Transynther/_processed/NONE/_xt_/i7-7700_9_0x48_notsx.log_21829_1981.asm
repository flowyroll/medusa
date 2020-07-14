.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x7158, %rbp
nop
nop
dec %r14
movups (%rbp), %xmm6
vpextrq $1, %xmm6, %rdx
and %rsi, %rsi
lea addresses_WT_ht+0x8c18, %r14
cmp $23220, %r15
mov $0x6162636465666768, %r10
movq %r10, %xmm3
and $0xffffffffffffffc0, %r14
movaps %xmm3, (%r14)
nop
nop
nop
nop
xor $25420, %rdx
lea addresses_UC_ht+0x6b18, %rsi
lea addresses_normal_ht+0x8198, %rdi
clflush (%rsi)
dec %r15
mov $108, %rcx
rep movsw
nop
nop
nop
xor %r14, %r14
lea addresses_UC_ht+0x12178, %rsi
lea addresses_A_ht+0x7d18, %rdi
clflush (%rdi)
nop
nop
nop
xor $37469, %r14
mov $71, %rcx
rep movsq
dec %rdi
lea addresses_WT_ht+0x12b08, %rsi
lea addresses_normal_ht+0x1a2c6, %rdi
clflush (%rsi)
sub %r15, %r15
mov $81, %rcx
rep movsl
nop
nop
nop
nop
sub $39741, %rbp
lea addresses_WT_ht+0x1d2d0, %rbp
nop
nop
nop
sub $4082, %rdi
movb (%rbp), %r15b
nop
nop
nop
nop
xor $64110, %rdx
lea addresses_A_ht+0x998, %rcx
nop
nop
nop
nop
nop
xor $36769, %rdx
and $0xffffffffffffffc0, %rcx
movaps (%rcx), %xmm2
vpextrq $1, %xmm2, %r15
nop
and %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x17978, %rsi
nop
sub %r9, %r9
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
nop
nop
and $52395, %r11

// REPMOV
lea addresses_WT+0x5f98, %rsi
lea addresses_UC+0x6b98, %rdi
and %r11, %r11
mov $63, %rcx
rep movsl
nop
cmp %rcx, %rcx

// Store
lea addresses_UC+0x5d98, %rcx
clflush (%rcx)
nop
nop
nop
nop
xor $38308, %r15
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_D+0x16498, %rsi
clflush (%rsi)
nop
nop
and $3061, %rdx
movw $0x5152, (%rsi)
nop
nop
nop
sub $49031, %r9

// Store
lea addresses_WT+0x10b50, %rdx
nop
nop
lfence
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
movups %xmm4, (%rdx)
nop
nop
cmp $25051, %rdx

// Load
lea addresses_normal+0xe658, %rdi
clflush (%rdi)
nop
nop
nop
cmp %r11, %r11
mov (%rdi), %r9d
nop
nop
nop
nop
nop
mfence

// REPMOV
lea addresses_normal+0x1c3d8, %rsi
lea addresses_normal+0x1ba07, %rdi
clflush (%rsi)
nop
xor %rdx, %rdx
mov $16, %rcx
rep movsb
add %rdx, %rdx

// Faulty Load
lea addresses_PSE+0x13198, %r11
nop
nop
nop
nop
xor $935, %r9
mov (%r11), %r15
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_D', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 10}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
